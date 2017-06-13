extern crate xmltree;
extern crate svd_parser as svd;

#[macro_use]
mod utils;
mod svd_writer;
mod dslite_parser;
mod dslite_to_svd;

use std::env;
use std::path::PathBuf;

fn main() {
    let file_name = match env::args().nth(1) {
        Some(name) => PathBuf::from(name),
        None => {
            eprintln!("Please pass device xml file as the first argument");
            return;
        }
    };
    let dslite_dev = dslite_parser::parse_dslite(&file_name);
    let svd_dev = dslite_to_svd::build_svd_device(&dslite_dev);
    let out_svd = svd_writer::write_device(&svd_dev);
    let parsed = svd::parse(&out_svd);
    assert_eq!(svd_dev, parsed);

    println!("{}", out_svd);
}
