use ordermap::OrderMap;
use std::path::Path;
use utils;
use xmltree::Element;

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

    let mut cached_modules = OrderMap::new();
    let mut registers = Vec::new();
    for i in &cpu.children {
        if let Some(mut module) = parse_cpu_instance(i, file_name) {
            // Remove all registers from the module before we cache it, since we will fill in the
            // registers after we process duplicates. This two-step caching process also prevents
            // modules with no registers from entering the output list of modules.
            let module_regs = std::mem::replace(&mut module.registers, Vec::new());
            for r in module_regs {
                registers.push(r);
            }
            cached_modules.insert(module.name.clone(), module);
        }
    }

    registers.sort_by(|a, b| {
        if a.width != b.width {
            a.width.cmp(&b.width)
        } else if a.offset != b.offset {
            a.offset.cmp(&b.offset)
        } else {
            a.name.cmp(&b.name)
        }
    });

    let mut modules: OrderMap<String, Module> = OrderMap::new();
    let mut memory: OrderMap<u32, &Register> = OrderMap::new();
    for r in &registers {
        if let Some(old) = get_conflict(&memory, r) {
            if r.width == 2 && old.width == 1 {
                if !memory.contains_key(&r.offset) || !memory.contains_key(&(r.offset + 1)) {
                    eprintln!(
                        "warning: register {} ({}) has missing parts",
                        old.name, r.name
                    );
                }
                eprintln!("erasing {} (keeping {})", r.name, old.name);
                continue;
            } else if r.width == old.width && r.offset == old.offset {
                if r.module == old.module {
                    // In this case the two registers alias the same address space, such as
                    // UCA0CTLW0 and UCA0CTLW0_SPI, which describe the same addresses differently
                    // depending on whether SPI mode is enabled for the eUSCI_A0. We simply include
                    // both registers and mark the second one with an alternate name.
                    let mut reg = r.clone();
                    reg.alternate = Some(old.name.clone());
                    modules.get_mut(&r.module).unwrap().registers.push(reg);
                } else {
                    modules
                        .entry(r.module.clone())
                        .or_insert(cached_modules.get(&r.module).unwrap().clone())
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
            .or_insert(cached_modules.get(&r.module).unwrap().clone())
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

    let href = uw!(el.attributes.get("href")).to_owned();
    let root_path = uw!(root_file.parent());
    let module_path = root_path.join(href);

    parse_dslite_module(&module_path, base)
}

fn parse_dslite_module(file_name: &Path, baseaddr: u32) -> Option<Module> {
    let el = uw!(utils::load_xml(file_name));

    assert_eq!(el.name, "module");
    match el.attributes.get("hidden") {
        Some(val) if val == "true" => return None,
        _ => {}
    }

    let name = uw!(el.attributes.get("id")).to_owned();
    let mut description = el.attributes.get("description").unwrap_or(&name).to_owned();
    let mut registers = el
        .children
        .iter()
        .map(|r| parse_register(r, &name))
        .collect::<Vec<_>>();

    // Rest of the code assumes that the offset value of each register includes the base address of
    // the module, so we add it here.
    for mut reg in &mut registers {
        reg.offset += baseaddr;
    }

    if description.trim().is_empty() {
        description = name.clone();
    }

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
    pub alternate: Option<String>,
}

fn parse_register(el: &Element, module: &str) -> Register {
    assert_eq!(el.name, "register");

    let name = uw!(el.attributes.get("id")).to_owned();
    let mut description = uw!(el.attributes.get("description")).to_owned();
    let offset = uw!(utils::parse_u32(uw!(el.attributes.get("offset"))));
    let width = uw!(utils::parse_u32(uw!(el.attributes.get("width"))));

    if description.trim().is_empty() {
        description = name.clone();
    }

    assert!(offset < (1 << 16));
    assert!(width == 8 || width == 16 || width == 32);

    let fields = el
        .children
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
        alternate: None,
    }
}

#[derive(Debug, Clone)]
pub enum Access {
    ReadOnly,
    WriteOnly,
    ReadWrite,
}

#[derive(Debug, Clone)]
pub struct Field {
    pub name: String,
    pub description: String,
    pub offset: u32,
    pub width: u32,
    pub enums: Vec<EnumValue>,
    pub rwa: Access,
}

fn parse_field(el: &Element) -> Field {
    assert_eq!(el.name, "bitfield");

    let name = uw!(el.attributes.get("id")).to_owned();
    let mut description = uw!(el.attributes.get("description")).to_owned();
    let begin = uw!(utils::parse_u32(uw!(el.attributes.get("begin"))));
    let end = uw!(utils::parse_u32(uw!(el.attributes.get("end"))));
    let width = uw!(utils::parse_u32(uw!(el.attributes.get("width"))));

    if description.trim().is_empty() {
        description = name.clone();
    }

    assert_eq!((begin as isize - end as isize).abs() + 1, width as isize);

    let offset = ::std::cmp::min(begin, end);

    let rwa = uw!(el.attributes.get("rwaccess")).to_owned();
    let rwa = match &rwa[..] {
        "R/W" | "RW" => Access::ReadWrite,
        "R" => Access::ReadOnly,
        "W" => Access::WriteOnly,
        _ => panic!("Unexpected read/write value {}", rwa),
    };

    let enums = el
        .children
        .iter()
        .map(|e| parse_enum(e))
        .collect::<Vec<_>>();

    Field {
        name: name,
        description: description,
        offset: offset,
        width: width,
        enums: enums,
        rwa,
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
    let mut description = uw!(el.attributes.get("description")).to_owned();
    let value = uw!(utils::parse_u32(uw!(el.attributes.get("value"))));

    if description.trim().is_empty() {
        description = name.clone();
    }

    EnumValue {
        name: name,
        description: description,
        value: value,
    }
}
