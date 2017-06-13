use xmltree::Element;
use svd::*;
use std::collections::HashMap;

fn write_string(name: &str, text: &str) -> Element {
    let mut el = Element::new(name);
    el.text = Some(String::from(text));
    el
}

fn write_usage(a: &Usage) -> Element {
    let v = match a {
        &Usage::Read => "read",
        &Usage::Write => "write",
        &Usage::ReadWrite => "read-write",
    };
    write_string("usage", v)
}

fn write_access(a: &Access) -> Element {
    let v = match a {
        &Access::ReadOnly => "read-only",
        &Access::ReadWrite => "read-write",
        &Access::ReadWriteOnce => "read-writeOnce",
        &Access::WriteOnly => "write-only",
        &Access::WriteOnce => "writeOnce",
    };
    write_string("access", v)
}

pub fn write_device(dev: &Device) -> String {
    let mut el = Element::new("device");
    el.children = vec![];
    el.children.push(write_string("name", &dev.name));

    if let Some(x) = dev.defaults.size {
        el.children.push(write_string("size", &x.to_string()));
    }
    if let Some(x) = dev.defaults.reset_value {
        el.children.push(write_string("resetValue", &x.to_string()));
    }
    if let Some(x) = dev.defaults.reset_mask {
        el.children.push(write_string("resetMask", &x.to_string()));
    }
    if let Some(x) = dev.defaults.access {
        el.children.push(write_access(&x));
    }

    el.children.push(write_peripherals(&dev));

    let mut out = Vec::new();
    el.write(&mut out);
    String::from_utf8(out).unwrap()
}

fn write_peripherals(dev: &Device) -> Element {
    let mut el = Element::new("peripherals");
    el.children = vec![];

    for p in &dev.peripherals {
        el.children.push(write_peripheral(p));
    }
    el
}

fn write_peripheral(per: &Peripheral) -> Element {
    let mut el = Element::new("peripheral");
    el.children = vec![];

    el.children.push(write_string("name", &per.name));

    if let Some(x) = per.group_name.as_ref() {
        el.children.push(write_string("groupName", &x.to_string()));
    }

    if let Some(x) = per.description.as_ref() {
        el.children
            .push(write_string("description", &x.to_string()));
    }

    el.children
        .push(write_string("baseAddress", &per.base_address.to_string()));

    if let Some(x) = per.derived_from.as_ref() {
        el.attributes = HashMap::new();
        el.attributes
            .insert("derivedFrom".to_owned(), x.to_string());
    }

    if let Some(x) = per.registers.as_ref() {
        el.children.push(write_registers(x))
    }

    el
}

fn write_registers(per: &Vec<Register>) -> Element {
    let mut el = Element::new("registers");
    el.children = vec![];

    for r in per {
        el.children.push(write_register(r));
    }
    el
}

fn write_register(reg: &Register) -> Element {
    let mut el = Element::new("register");
    el.children = vec![];

    let reg = match reg {
        &Register::Single(ref r) => r,
        _ => panic!("arrays are not supported"),
    };

    el.children.push(write_string("name", &reg.name));
    el.children
        .push(write_string("description", &reg.description));
    el.children
        .push(write_string("addressOffset", &reg.address_offset.to_string()));

    if let Some(x) = reg.size.as_ref() {
        el.children.push(write_string("size", &x.to_string()));
    }

    if let Some(x) = reg.access {
        el.children.push(write_access(&x));
    }

    if let Some(x) = reg.reset_value.as_ref() {
        el.children.push(write_string("resetValue", &x.to_string()));
    }

    if let Some(x) = reg.reset_mask.as_ref() {
        el.children.push(write_string("resetMask", &x.to_string()));
    }

    if let Some(x) = reg.fields.as_ref() {
        el.children.push(write_fields(x))
    }

    if let Some(wc) = reg.write_constraint.as_ref() {
        el.children.push(write_constraint(wc))
    }

    el
}

fn write_fields(per: &Vec<Field>) -> Element {
    let mut el = Element::new("fields");
    el.children = vec![];

    for r in per {
        el.children.push(write_field(r));
    }
    el
}

fn write_field(reg: &Field) -> Element {
    let mut el = Element::new("field");
    el.children = vec![];

    el.children.push(write_string("name", &reg.name));

    if let Some(x) = reg.description.as_ref() {
        el.children
            .push(write_string("description", &x.to_string()));
    }

    el.children
        .push(write_string("bitOffset", &reg.bit_range.offset.to_string()));
    el.children
        .push(write_string("bitWidth", &reg.bit_range.width.to_string()));

    if let Some(x) = reg.access {
        el.children.push(write_access(&x));
    }

    for e in &reg.enumerated_values {
        el.children.push(write_enums(e))
    }

    if let Some(wc) = reg.write_constraint.as_ref() {
        el.children.push(write_constraint(wc))
    }

    el
}

fn write_constraint(wc: &WriteConstraint) -> Element {
    let mut wc_el = Element::new("writeConstraint");
    let mut range_el = Element::new("range");

    match wc {
        &WriteConstraint::Range(r) => {
            let mut min_el = Element::new("minimum");
            let mut max_el = Element::new("maximum");
            min_el.text = Some(r.min.to_string());
            max_el.text = Some(r.max.to_string());
            range_el.children.push(min_el);
            range_el.children.push(max_el);
        }
        _ => panic!("unsupported write constraint"),
    }
    wc_el.children.push(range_el);
    wc_el
}

fn write_enums(per: &EnumeratedValues) -> Element {
    let mut el = Element::new("enumeratedValues");
    el.children = vec![];

    if let Some(x) = per.name.as_ref() {
        el.children.push(write_string("name", &x.to_string()));
    }

    if let Some(x) = per.usage.as_ref() {
        el.children.push(write_usage(x));
    }

    if let Some(x) = per.derived_from.as_ref() {
        el.attributes = HashMap::new();
        el.attributes
            .insert("derivedFrom".to_owned(), x.to_string());
    }

    for e in &per.values {
        el.children.push(write_enum_val(e));
    }

    el
}

fn write_enum_val(reg: &EnumeratedValue) -> Element {
    let mut el = Element::new("enumeratedValue");
    el.children = vec![];

    el.children.push(write_string("name", &reg.name));

    if let Some(x) = reg.description.as_ref() {
        el.children
            .push(write_string("description", &x.to_string()));
    }

    if let Some(x) = reg.value.as_ref() {
        el.children.push(write_string("value", &x.to_string()));
    }

    if let Some(x) = reg.is_default.as_ref() {
        el.children.push(write_string("isDefault", &x.to_string()));
    }

    el
}
