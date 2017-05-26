extern crate xmltree;

#[macro_use]
mod utils;

use std::path::Path;
use std::path::PathBuf;
use std::collections::HashMap;
use xmltree::Element;

const NAME: &str = "msp430-gcc-support-files/targetdb/devices/CC430F5123.xml";

fn main() {
    let file_name = &PathBuf::from(NAME);
    let dev = parse_dslite(file_name);
    //println!("{:#?}", dev);
}

#[derive(Debug)]
pub struct Device {
    name: String,
    modules: HashMap<String, Module>,
}

pub fn parse_dslite(file_name: &Path) -> Device {
    let el = uw!(utils::load_xml(file_name));

    let name = uw!(el.attributes.get("id")).to_owned();
    let cpu = uw!(el.children.iter().find(|i| i.name == "cpu"));

    let mut modules = HashMap::new();
    let mut registers = Vec::new();
    for i in &cpu.children {
        if let Some(module) = parse_cpu_instance(i, file_name) {
            modules.insert(module.name.clone(), module.clone());
            for r in module.registers {
                registers.push(r);
            }
        }
    }

    println!("{:#?}", registers);

    Device {
        name: name,
        modules: modules,
    }
}

#[derive(Debug, Clone)]
struct Module {
    name: String,
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
    let registers = el.children.iter()
        .map(|r| parse_register(r, &name))
        .collect::<Vec<_>>();

    Some(Module {
             name: name,
             registers: registers,
         })
}

#[derive(Debug, Clone)]
struct Register {
    name: String,
    module: String,
    offset: u32,
    width: u32,
}

fn parse_register(el: &Element, module: &str) -> Register {
    assert_eq!(el.name, "register");

    let name = uw!(el.attributes.get("acronym")).to_owned();
    let offset = uw!(utils::parse_u32(uw!(el.attributes.get("offset"))));
    let width = uw!(utils::parse_u32(uw!(el.attributes.get("width"))));

    Register {
        name: name,
        offset: offset,
        width: width,
        module: module.to_owned(),
    }
}
