extern crate inflector;
extern crate indexmap;
extern crate svd_parser as svd;
extern crate xmltree;
extern crate svd_encoder;

#[macro_use]
mod utils;
mod dslite_parser;
mod dslite_to_svd;
mod header_parser;

use std::env;
use std::path::PathBuf;

use svd_encoder::{Config, Encode, NumberFormat};

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

    let config = Config::default()
        .peripheral_base_address(NumberFormat::Dec)
        .address_block_offset(NumberFormat::Dec)
        .address_block_size(NumberFormat::Dec)
        .cluster_address_offset(NumberFormat::Dec)
        .register_address_offset(NumberFormat::Dec)
        .register_size(NumberFormat::Dec)
        .register_reset_value(NumberFormat::Dec)
        .register_reset_mask(NumberFormat::Dec)
        .enumerated_value_value(NumberFormat::Dec)
        .dim_dim(NumberFormat::Dec)
        .dim_increment(NumberFormat::Dec);

    let svd_dev = dslite_to_svd::build_svd_device(&dslite_dev, &interrupts);
    let svd_enc = match svd_dev.encode_with_config(&config) {
        Ok(encoded) => encoded,
        Err(e) => {
            eprintln!("Encoding output SVD failed: {}", e);
            return;
        }
    };

    let mut out = Vec::new();
    match svd_enc.write(&mut out) {
        Ok(_) => {},
        Err(e) => {
            eprintln!("Converting output SVD to Vec failed: {}", e);
            return;
        }
    };

    let out_svd = match String::from_utf8(out) {
        Ok(s) => s,
        Err(e) => {
            eprintln!("Converting output SVD to String failed: {}", e);
            return;
        }
    };

    match svd::parse(&out_svd) {
        Ok(parsed) => { assert_eq!(svd_dev, parsed); },
        Err(_e) => {
            eprintln!("Parsing output file {} during round-trip test failed", out_svd);
            return;
        }
    }

    println!("{}", out_svd);
}
