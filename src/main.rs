extern crate inflector;
extern crate indexmap;
extern crate svd_parser as svd;
extern crate xmltree;

#[macro_use]
mod utils;
mod svd_writer;
mod dslite_parser;
mod dslite_to_svd;
mod header_parser;

use std::env;
use std::path::PathBuf;

// Newtype to implement PartialEq on svd::Device without needing
// to fork the crate.
#[derive(Debug)]
struct DeviceWrapper(svd::Device);

#[derive(Debug)]
struct PeripheralWrapper(svd::Peripheral);

impl PartialEq<DeviceWrapper> for DeviceWrapper {
    fn eq(&self, other: &DeviceWrapper) -> bool {
        let dev_self : &svd::Device = &self.0;
        let other_self : &svd::Device = &other.0;

        let periph_dev : Vec<PeripheralWrapper> = dev_self.peripherals.clone().into_iter().map(|d| PeripheralWrapper(d)).collect();
        let other_dev : Vec<PeripheralWrapper> = other_self.peripherals.clone().into_iter().map(|d| PeripheralWrapper(d)).collect();

        (dev_self.name == other_self.name) &&
        (dev_self.version == other_self.version) &&
        (dev_self.description == other_self.description) &&
        (dev_self.address_unit_bits == other_self.address_unit_bits) &&
        (dev_self.width == other_self.width) &&
        (dev_self.cpu == other_self.cpu) &&
        (periph_dev == other_dev) &&
        (dev_self.default_register_properties == other_self.default_register_properties)
    }
}

impl PartialEq<PeripheralWrapper> for PeripheralWrapper {
    fn eq(&self, other: &PeripheralWrapper) -> bool {
        let dev_self : &svd::Peripheral = &self.0;
        let other_self : &svd::Peripheral = &other.0;

        (dev_self.name == other_self.name) &&
        (dev_self.version == other_self.version) &&
        (dev_self.display_name == other_self.display_name) &&
        (dev_self.group_name == other_self.group_name) &&
        (dev_self.description == other_self.description) &&
        (dev_self.base_address == other_self.base_address) &&
        (dev_self.address_block == other_self.address_block) &&
        (dev_self.interrupt == other_self.interrupt) &&
        (dev_self.default_register_properties == other_self.default_register_properties) &&
        (dev_self.registers == other_self.registers)
    }
}

fn main() {
    let mcu_name = match env::args().nth(1) {
        Some(name) => name,
        None => {
            eprintln!("Please provide MCU name as the first argument");
            return;
        }
    };

    let dslite_root = PathBuf::from("msp430-gcc-support-files/targetdb/devices");
    let headers_root = PathBuf::from("msp430-gcc-support-files/include");

    let dslite_path = dslite_root.join(format!("{}.xml", mcu_name.to_uppercase()));
    let header_path = headers_root.join(format!("{}.h", mcu_name.to_lowercase()));

    if !dslite_path.is_file() {
        eprintln!("Can't find dslite xml file in {:?}", dslite_path);
        return;
    }

    if !header_path.is_file() {
        eprintln!("Can't find header file in {:?}", header_path);
        return;
    }

    let dslite_dev = dslite_parser::parse_dslite(&dslite_path);
    let interrupts = header_parser::parse_header(&header_path);

    let svd_dev = dslite_to_svd::build_svd_device(&dslite_dev, &interrupts);
    let out_svd = svd_writer::write_device(&svd_dev);

    match svd::parse(&out_svd) {
        Ok(parsed) => { assert_eq!(DeviceWrapper(svd_dev), DeviceWrapper(parsed)); },
        Err(e) => {
            eprintln!("Parsing output file {} during round-trip test failed", out_svd);
            return;
        }
    }

    println!("{}", out_svd);
}
