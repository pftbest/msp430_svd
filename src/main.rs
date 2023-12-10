extern crate indexmap;
extern crate inflector;
extern crate svd_encoder;
extern crate svd_parser as svd;
extern crate svdtools;
extern crate xmltree;

#[macro_use]
mod utils;
mod dslite_parser;
mod dslite_to_svd;
mod header_parser;

use std::env;
use std::fs::File;
use std::io::Write;
use std::path::{Path, PathBuf};

use svd_encoder::{Config, NumberFormat};
use svdtools::patch;

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
    let svd_file = format!("{}.svd", mcu_name.to_lowercase());

    let dslite_path = dslite_root.join(format!("{}.xml", mcu_name.to_uppercase()));
    let header_path = headers_root.join(format!("{}.h", mcu_name.to_lowercase()));
    let svd_raw_path = Path::new(&svd_file);

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

    // This should match config/encoding.json for patched SVD. When svdtools gets
    // support for directly taking config files, we can remove config/encoding.json.
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
    let svd_enc = match svd_encoder::encode_with_config(&svd_dev, &config) {
        Ok(encoded) => encoded,
        Err(e) => {
            eprintln!("Encoding output SVD failed: {}", e);
            return;
        }
    };

    match svd::parse(&svd_enc) {
        Ok(parsed) => {
            assert_eq!(svd_dev, parsed);
        }
        Err(_e) => {
            eprintln!(
                "Parsing output file {} during round-trip test failed",
                svd_enc
            );
            return;
        }
    }

    let mut svd_fp = match File::create(svd_raw_path) {
        Ok(fp) => fp,
        Err(e) => {
            eprintln!("Creating unpatched SVD file failed: {}", e);
            return;
        }
    };

    if let Err(e) = svd_fp.write_all(&svd_enc.as_bytes()) {
        eprintln!("Writing unpatched SVD file failed: {}", e);
        return;
    }

    drop(svd_fp);

    let yaml_devices_root = PathBuf::from("overrides/devices");
    let dev_yaml_path = yaml_devices_root.join(format!("{}.yaml", mcu_name.to_lowercase()));

    if dev_yaml_path.exists() {
        match patch::process_file(
            &dev_yaml_path,
            None,
            Some(Path::new("config/encoding.json")),
            &patch::Config::default(),
        ) {
            Ok(_) => {}
            Err(e) => {
                eprintln!("Patching SVD file failed: {}", e);
                return;
            }
        }
    }
}
