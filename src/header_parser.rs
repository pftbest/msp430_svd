use std::path::Path;
use utils;

#[derive(Debug)]
pub struct Interrupts {
    base_offset: u32,
    vectors: Vec<Vector>,
}

#[derive(Debug)]
pub struct Vector {
    pub name: String,
    pub description: String,
    pub value: u32,
}

pub fn parse_header(file_name: &Path) -> Interrupts {
    let text = uw!(utils::load_text(file_name));

    let mut base_offset = None;
    for line in text.lines() {
        if line.contains("Interrupt Vectors (offset from") {
            base_offset = Some(parse_offset(line));
        }
    }
    let base_offset = uw!(base_offset);

    let mut vectors = Vec::new();
    for line in text.lines() {
        if line.contains("#define") && line.contains("_VECTOR") {
            if let Some(v) = parse_vector(line, base_offset) {
                vectors.push(v);
            }
        }
    }

    Interrupts {
        base_offset: base_offset,
        vectors: vectors,
    }
}

fn parse_offset(line: &str) -> u32 {
    let addr = uw!(line.split_whitespace().nth(5)).trim_matches(')');
    assert!(addr.starts_with("0xFF"));
    uw!(utils::parse_u32(&addr))
}

fn parse_vector(line: &str, base_offset: u32) -> Option<Vector> {
    let mut parts = line.split_whitespace();
    let name = uw!(parts.nth(1));
    if !(uw!(parts.next()).starts_with("(")) {
        eprintln!("skipping aliased vector {}", name);
        return None;
    }

    let name = get_content(name, "", "_VECTOR");
    let value = get_content(line, "(", ")");
    let comment = get_content(line, "/*", "*/");

    let value = if value == "\"reset\"" {
        (0x10000 - base_offset) / 2
    } else {
        uw!(utils::parse_u32(&value))
    };

    Some(Vector {
        name: name,
        description: comment,
        value: value,
    })
}

fn get_content(line: &str, left: &str, right: &str) -> String {
    let l = uw!(line.find(left)) + left.len();
    let r = uw!(line.find(right));
    line[l..r].trim().to_owned()
}
