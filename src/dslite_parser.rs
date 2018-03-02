use ordermap::OrderMap;
use xmltree::Element;
use utils;
use std::path::Path;

#[derive(Debug)]
pub struct Device {
    pub name: String,
    pub description: String,
    pub modules: OrderMap<String, Module>,
}

fn get_conflict<'a>(map: &OrderMap<u32, &'a Register>, reg: &Register) -> Option<&'a Register> {
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

    let mut module_descriptions = OrderMap::new();
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

    let mut modules: OrderMap<String, Module> = OrderMap::new();
    let mut memory: OrderMap<u32, &Register> = OrderMap::new();
    for r in &registers {
        if let Some(old) = get_conflict(&memory, r) {
            if r.width == 2 && old.width == 1 {
                if !memory.contains_key(&r.offset) || !memory.contains_key(&(r.offset + 1)) {
                    eprintln!(
                        "warning: register {} ({}) has missing parts",
                        old.name,
                        r.name
                    );
                }
                eprintln!("erasing {} (keeping {})", r.name, old.name);
                continue;
            } else if r.width == old.width && r.offset == old.offset {
                if r.module == old.module {
                    eprintln!("warning: conflict in the same module, {} and {}", old.name, r.name);
                    if r.fields.is_empty() && old.fields.is_empty() {
                        // Both registers are empty, that means they are identical, so
                        // keep the one with a short name
                        if r.name.len() >= old.name.len() {
                            eprintln!("erasing {} (keeping {})", r.name, old.name);
                            continue;
                        }
                    } else if r.fields.is_empty() {
                        // New register is empty, so keep the old one
                        eprintln!("erasing {} (keeping {})", r.name, old.name);
                        continue;
                    } else if old.fields.is_empty() {
                        // Old register is empty, replace it with new one
                    } else {
                        panic!("both registers have fields, can't decide which one to keep\nOLD {:#?}\nNEW {:#?}\nPlease file an issue at https://github.com/pftbest/msp430_svd/issues", old, r);
                    }
                    eprintln!("erasing {} (keeping {})", old.name, r.name);
                } else {
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
                }
            } else {
                panic!("unexpected registers\nOLD {:#?}\nNEW {:#?}\nPlease file an issue at https://github.com/pftbest/msp430_svd/issues", old, r);
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
pub struct Module {
    pub name: String,
    pub description: String,
    pub registers: Vec<Register>,
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
pub struct Register {
    pub name: String,
    pub description: String,
    pub module: String,
    pub offset: u32,
    pub width: u32,
    pub fields: Vec<Field>,
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
pub struct Field {
    pub name: String,
    pub description: String,
    pub offset: u32,
    pub width: u32,
    pub enums: Vec<EnumValue>,
}

fn parse_field(el: &Element) -> Field {
    assert_eq!(el.name, "bitfield");

    let name = uw!(el.attributes.get("id")).to_owned();
    let description = uw!(el.attributes.get("description")).to_owned();
    let begin = uw!(utils::parse_u32(uw!(el.attributes.get("begin"))));
    let end = uw!(utils::parse_u32(uw!(el.attributes.get("end"))));
    let width = uw!(utils::parse_u32(uw!(el.attributes.get("width"))));

    assert_eq!((begin as isize - end as isize).abs() + 1, width as isize);

    let offset = ::std::cmp::min(begin, end);

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
pub struct EnumValue {
    pub name: String,
    pub description: String,
    pub value: u32,
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
