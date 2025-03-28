use std::fs::File;
use std::io::Read;
use std::num::ParseIntError;
use std::path::Path;
use xmltree::Element;

/// Macro for unwrapping
macro_rules! uw {
    ($e:expr) => {
        $e.expect(concat!(file!(), ":", line!(), " ", stringify!($e)))
    };
}

/// Macro for printing to the error output
macro_rules! eprint {
    ($s:expr) => { {
        use std::io::Write;
        ::std::io::stderr().write_all($s.as_bytes()).ok();
    } };
    ($($arg:tt)*) => { {
        use std::io::Write;
        ::std::io::stderr().write_fmt(format_args!($($arg)*)).ok();
    } };
}

/// Macro for printing to the error output, with a newline.
macro_rules! eprintln {
    () => (eprint!("\n"));
    ($fmt:expr) => (eprint!(concat!($fmt, "\n")));
    ($fmt:expr, $($arg:tt)*) => (eprint!(concat!($fmt, "\n"), $($arg)*));
}

pub fn parse_u32(input: &str) -> Result<u32, ParseIntError> {
    let input = input.trim();
    if input.starts_with("0x") | input.starts_with("0X") {
        u32::from_str_radix(&input[2..], 16)
    } else {
        input.parse::<u32>()
    }
}

pub fn load_xml(file_name: &Path) -> Result<Element, String> {
    let mut file = File::open(file_name).map_err(|_| format!("can't open {:?}", file_name))?;
    let mut contents = String::new();
    file.read_to_string(&mut contents)
        .map_err(|_| format!("can't read {:?}", file_name))?;
    Element::parse(contents.as_bytes()).map_err(|_| format!("can't parse {:?}", file_name))
}

pub fn load_text(file_name: &Path) -> Result<String, String> {
    let mut file = File::open(file_name).map_err(|_| format!("can't open {:?}", file_name))?;
    let mut contents = String::new();
    file.read_to_string(&mut contents)
        .map_err(|_| format!("can't read {:?}", file_name))?;
    Ok(contents)
}
