extern crate ordermap;
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
    let parsed = svd::parse(&out_svd);
    assert_eq!(svd_dev, parsed);

    println!("{}", out_svd);
}
