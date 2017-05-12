extern crate xmltree;

#[macro_use]
mod utils;

use std::path::Path;
use std::path::PathBuf;
use std::collections::HashMap;
use xmltree::Element;

fn main() {
    let file_name = &PathBuf::from("targetdb/devices/CC430F5123.xml");
    let dev = parse_dslite(file_name);
    println!("{:#?}", dev);
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
    for i in &cpu.children {
        if let Some(module) = parse_cpu_instance(i, file_name) {
            modules.insert(module.name.clone(), module);
        }
    }

    Device {
        name: name,
        modules: modules,
    }
}

#[derive(Debug)]
struct Module {
    name: String,
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

    Some(Module { name: "aa".into() })
}

fn fix_name(name: &str) -> String {
    match name.find("__") {
            Some(x) => &name[..x],
            None => name,
        }
        .to_owned()
}
