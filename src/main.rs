extern crate xmltree;
extern crate svd_parser as svd;

#[macro_use]
mod utils;
mod write;

use std::env;
use std::path::Path;
use std::path::PathBuf;
use std::collections::HashMap;
use xmltree::Element;

trait StringEx {
    fn fix_name(&self) -> String;
}

impl StringEx for String {
    fn fix_name(&self) -> String {
        self.replace("/", "_")
            .replace(" ", "_")
            .replace("__Real_Time_Clock", "")
            .replace("__Power_Management_System", "")
            .replace("__Special_Function_Registers", "")
            .replace("__System_Module", "")
            .replace("__Unified_System_Clock", "")
            .replace("__Multiplier__16_Bit_Mode", "")
            .replace("__Multiplier__32_Bit_Mode", "")
            .replace("__RAM_Control_Module", "")
            .replace("__I2C_Mode", "_I2C_Mode")
            .replace("__SPI_Mode", "_SPI_Mode")
            .replace("__UART_Mode", "_UART_Mode")
            .replace("__SPI", "")
    }
}

fn build_svd_device(dev: &Device) -> svd::Device {
    let mut peripherals = Vec::new();
    for (_, m) in &dev.modules {
        let base_address = m.registers.iter().map(|r| r.offset).min().unwrap_or(0) & (!1);
        assert!(base_address < (1 << 16));
        assert!(base_address % 2 == 0);

        let mut registers = Vec::new();
        for reg in &m.registers {
            let offset = reg.offset - base_address;
            assert!(offset < (1 << 16));
            if reg.width > 1 {
                assert!(offset % 2 == 0);
            }

            let reset_mask = match reg.width {
                1 => 0xff,
                2 => 0xffff,
                4 => 0xffffffff,
                _ => panic!("invalid width"),
            };

            let mut fields = Vec::new();
            for f in &reg.fields {
                let mut enums = Vec::new();
                for e in &f.enums {
                    let ev = svd::EnumeratedValue {
                        name: e.name.clone(),
                        description: Some(e.description.clone()),
                        value: Some(e.value),
                        is_default: None,
                    };
                    enums.push(ev);
                }

                let field_constraint;
                if enums.len() == 0 {
                    field_constraint =
                        Some(svd::WriteConstraint::Range(svd::WriteConstraintRange {
                                                             min: 0,
                                                             max: (1 << f.width) - 1,
                                                         }));
                } else {
                    field_constraint = None;
                }
                let field = svd::Field {
                    name: f.name.clone(),
                    description: Some(f.description.clone()),
                    bit_range: svd::BitRange {
                        offset: f.offset,
                        width: f.width,
                    },
                    access: Some(svd::Access::ReadWrite),
                    enumerated_values: vec![svd::EnumeratedValues {
                                                name: None,
                                                usage: None,
                                                derived_from: None,
                                                values: enums,
                                            }],
                    write_constraint: field_constraint,
                };
                fields.push(field);
            }

            let reg_constraint;
            if fields.len() == 0 {
                reg_constraint = Some(svd::WriteConstraint::Range(svd::WriteConstraintRange {
                                                                      min: 0,
                                                                      max: (1 << (reg.width * 8)) -
                                                                           1,
                                                                  }));
            } else {
                reg_constraint = None;
            }

            let ri = svd::RegisterInfo {
                name: reg.name.fix_name(),
                description: reg.description.clone(),
                address_offset: offset,
                size: Some(reg.width * 8),
                access: None,
                reset_value: None,
                reset_mask: Some(reset_mask),
                fields: Some(fields),
                write_constraint: reg_constraint,
            };
            registers.push(svd::Register::Single(ri));
        }

        let p = svd::Peripheral {
            name: m.name.fix_name(),
            group_name: None,
            description: Some(m.description.clone()),
            base_address: base_address,
            interrupt: Vec::new(),
            registers: Some(registers),
            derived_from: None,
        };
        peripherals.push(p);
    }

    svd::Device {
        name: dev.name.fix_name(),
        peripherals: peripherals,
        defaults: svd::Defaults {
            size: Some(2),
            reset_value: Some(0),
            reset_mask: None,
            access: Some(svd::Access::ReadWrite),
        },
    }
}

fn main() {
    let file_name = match env::args().nth(1) {
        Some(name) => PathBuf::from(name),
        None => {
            eprintln!("Please pass device xml file as the first argument");
            return;
        }
    };
    let dev = parse_dslite(&file_name);

    let svd_dev = build_svd_device(&dev);
    let out_svd = write::write_device(&svd_dev);
    let parsed = svd::parse(&out_svd);
    println!("{}", out_svd);
    assert_eq!(svd_dev, parsed);
}

#[derive(Debug)]
pub struct Device {
    name: String,
    description: String,
    modules: HashMap<String, Module>,
}

fn get_conflict<'a>(map: &HashMap<u32, &'a Register>, reg: &Register) -> Option<&'a Register> {
    for i in 0..reg.width {
        let addr = reg.offset + i;
        if let Some(old) = map.get(&addr) {
            return Some(old);
        }
    }
    None
}

pub fn parse_dslite(file_name: &Path) -> Device {
    let el = uw!(utils::load_xml(file_name));

    let name = uw!(el.attributes.get("id")).to_owned();
    let description = uw!(el.attributes.get("description")).to_owned();
    let cpu = uw!(el.children.iter().find(|i| i.name == "cpu"));

    let mut module_descriptions = HashMap::new();
    let mut registers = Vec::new();
    for i in &cpu.children {
        if let Some(module) = parse_cpu_instance(i, file_name) {
            module_descriptions.insert(module.name.clone(), module.description.clone());
            for r in module.registers {
                registers.push(r);
            }
        }
    }

    registers.sort_by(|a, b| if a.width != b.width {
                          a.width.cmp(&b.width)
                      } else if a.offset != b.offset {
                          a.offset.cmp(&b.offset)
                      } else {
                          a.name.cmp(&b.name)
                      });

    let mut modules: HashMap<String, Module> = HashMap::new();
    let mut memory: HashMap<u32, &Register> = HashMap::new();
    for r in &registers {
        if let Some(old) = get_conflict(&memory, r) {
            if r.width == 2 && old.width == 1 {
                if !memory.contains_key(&r.offset) || !memory.contains_key(&(r.offset + 1)) {
                    eprintln!("warning: register {} ({}) has missing parts",
                              old.name,
                              r.name);
                }
                eprintln!("erasing {} (keeping {})", r.name, old.name);
                continue;
            } else if r.width == old.width && r.offset == old.offset {
                if r.module == old.module {
                    panic!("conflict in the same module\nOLD {:#?}\nNEW {:#?}", old, r);
                }
                modules
                    .entry(r.module.clone())
                    .or_insert(Module {
                                   name: r.module.clone(),
                                   description: module_descriptions.get(&r.module).unwrap().clone(),
                                   registers: Vec::new(),
                               })
                    .registers
                    .push(r.clone());
                continue;
            } else {
                panic!("unexpected registers\nOLD {:#?}\nNEW {:#?}", old, r);
            }
        }
        for i in 0..r.width {
            let addr = r.offset + i;
            memory.insert(addr, r);
        }
        modules
            .entry(r.module.clone())
            .or_insert(Module {
                           name: r.module.clone(),
                           description: module_descriptions.get(&r.module).unwrap().clone(),
                           registers: Vec::new(),
                       })
            .registers
            .push(r.clone());
    }

    Device {
        name: name,
        description: description,
        modules: modules,
    }
}

#[derive(Debug, Clone)]
struct Module {
    name: String,
    description: String,
    registers: Vec<Register>,
}

fn parse_cpu_instance(el: &Element, root_file: &Path) -> Option<Module> {
    assert_eq!(el.name, "instance");
    let base = uw!(utils::parse_u32(uw!(el.attributes.get("baseaddr"))));
    assert_eq!(base, 0);

    let href = uw!(el.attributes.get("href")).to_owned();
    let root_path = uw!(root_file.parent());
    let module_path = root_path.join(href);

    parse_dslite_module(&module_path)
}

fn parse_dslite_module(file_name: &Path) -> Option<Module> {
    let el = uw!(utils::load_xml(file_name));

    assert_eq!(el.name, "module");
    match el.attributes.get("hidden") {
        Some(val) if val == "true" => return None,
        _ => {}
    }

    let name = uw!(el.attributes.get("id")).to_owned();
    let description = uw!(el.attributes.get("description")).to_owned();
    let registers = el.children
        .iter()
        .map(|r| parse_register(r, &name))
        .collect::<Vec<_>>();

    Some(Module {
             name: name,
             description: description,
             registers: registers,
         })
}

#[derive(Debug, Clone)]
struct Register {
    name: String,
    description: String,
    module: String,
    offset: u32,
    width: u32,
    fields: Vec<Field>,
}

fn parse_register(el: &Element, module: &str) -> Register {
    assert_eq!(el.name, "register");

    let name = uw!(el.attributes.get("acronym")).to_owned();
    let description = uw!(el.attributes.get("description")).to_owned();
    let offset = uw!(utils::parse_u32(uw!(el.attributes.get("offset"))));
    let width = uw!(utils::parse_u32(uw!(el.attributes.get("width"))));

    assert!(offset < (1 << 16));
    assert!(width == 8 || width == 16 || width == 32);

    let fields = el.children
        .iter()
        .map(|f| parse_field(f))
        .collect::<Vec<_>>();

    Register {
        name: name,
        description: description,
        offset: offset,
        width: width / 8,
        module: module.to_owned(),
        fields: fields,
    }
}

#[derive(Debug, Clone)]
struct Field {
    name: String,
    description: String,
    offset: u32,
    width: u32,
    enums: Vec<EnumValue>,
}

fn parse_field(el: &Element) -> Field {
    assert_eq!(el.name, "bitfield");

    let name = uw!(el.attributes.get("id")).to_owned();
    let description = uw!(el.attributes.get("description")).to_owned();
    let offset = uw!(utils::parse_u32(uw!(el.attributes.get("begin"))));
    let width = uw!(utils::parse_u32(uw!(el.attributes.get("width"))));

    let rwa = uw!(el.attributes.get("rwaccess")).to_owned();
    assert!(rwa == "R/W" || rwa == "RW");

    let enums = el.children
        .iter()
        .map(|e| parse_enum(e))
        .collect::<Vec<_>>();

    Field {
        name: name,
        description: description,
        offset: offset,
        width: width,
        enums: enums,
    }
}

#[derive(Debug, Clone)]
struct EnumValue {
    name: String,
    description: String,
    value: u32,
}

fn parse_enum(el: &Element) -> EnumValue {
    assert_eq!(el.name, "bitenum");

    let name = uw!(el.attributes.get("id")).to_owned();
    let description = uw!(el.attributes.get("description")).to_owned();
    let value = uw!(utils::parse_u32(uw!(el.attributes.get("value"))));

    EnumValue {
        name: name,
        description: description,
        value: value,
    }
}
