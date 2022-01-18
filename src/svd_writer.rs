use std::collections::HashMap;
use crate::svd::svd::*;
use xmltree::{Element, XMLNode};

fn write_string(name: &str, text: &str) -> Element {
    let mut el = Element::new(name);
    el.children = vec![];
    el.children.push(XMLNode::Text(String::from(text)));
    el
}

fn write_usage(a: &Usage) -> Element {
    let v = match *a {
        Usage::Read => "read",
        Usage::Write => "write",
        Usage::ReadWrite => "read-write",
    };
    write_string("usage", v)
}

fn write_access(a: &Access) -> Element {
    let v = match *a {
        Access::ReadOnly => "read-only",
        Access::ReadWrite => "read-write",
        Access::ReadWriteOnce => "read-writeOnce",
        Access::WriteOnly => "write-only",
        Access::WriteOnce => "writeOnce",
    };
    write_string("access", v)
}

pub fn write_device(dev: &Device) -> String {
    let mut el = Element::new("device");
    el.children = vec![];
    el.children.push(XMLNode::Element(write_string("name", &dev.name)));

    if let Some(x) = dev.default_register_properties.size {
        el.children.push(XMLNode::Element(write_string("size", &x.to_string())));
    }
    if let Some(x) = dev.default_register_properties.reset_value {
        el.children.push(XMLNode::Element(write_string("resetValue", &x.to_string())));
    }
    if let Some(x) = dev.default_register_properties.reset_mask {
        el.children.push(XMLNode::Element(write_string("resetMask", &x.to_string())));
    }
    if let Some(x) = dev.default_register_properties.access {
        el.children.push(XMLNode::Element(write_access(&x)));
    }

    el.children.push(XMLNode::Element(write_peripherals(dev)));

    el.children.push(XMLNode::Element(write_vendor_extensions()));

    let mut out = Vec::new();
    el.write(&mut out).unwrap();
    String::from_utf8(out).unwrap()
}

fn write_peripherals(dev: &Device) -> Element {
    let mut el = Element::new("peripherals");
    el.children = vec![];

    for p in &dev.peripherals {
        el.children.push(XMLNode::Element(write_peripheral(p)));
    }
    el
}

fn write_peripheral(per: &Peripheral) -> Element {
    let mut el = Element::new("peripheral");
    el.children = vec![];

    el.children.push(XMLNode::Element(write_string("name", &per.name)));

    if let Some(x) = per.group_name.as_ref() {
        el.children.push(XMLNode::Element(write_string("groupName", x)));
    }

    if let Some(x) = per.description.as_ref() {
        el.children.push(XMLNode::Element(write_string("description", x)));
    }

    el.children
        .push(XMLNode::Element(write_string("baseAddress", &per.base_address.to_string())));

    if let Some(x) = per.derived_from.as_ref() {
        el.attributes = HashMap::new();
        el.attributes.insert("derivedFrom".to_owned(), x.to_owned());
    }

    if let Some(x) = per.registers.as_ref() {
        el.children.push(XMLNode::Element(write_registers(x)))
    }

    for int in &per.interrupt {
        el.children.push(XMLNode::Element(write_interrupt(int)))
    }

    el
}

fn write_interrupt(int: &Interrupt) -> Element {
    let mut el = Element::new("interrupt");
    el.children = vec![];

    el.children.push(XMLNode::Element(write_string("name", &int.name)));

    if let Some(x) = int.description.as_ref() {
        el.children.push(XMLNode::Element(write_string("description", x)));
    }

    el.children
        .push(XMLNode::Element(write_string("value", &int.value.to_string())));

    el
}

fn write_registers(per: &[RegisterCluster]) -> Element {
    let mut el = Element::new("registers");
    el.children = vec![];

    for r in per {
        if let RegisterCluster::Register(reg) = r {
            el.children.push(XMLNode::Element(write_register(reg)));
        } else {
            unimplemented!("Writing register clusters is not implemented.")
        }
    }
    el
}

fn write_register(reg: &Register) -> Element {
    let mut el = Element::new("register");
    el.children = vec![];

    let reg = match *reg {
        Register::Single(ref r) => r,
        _ => panic!("arrays are not supported"),
    };

    el.children.push(XMLNode::Element(write_string("name", &reg.name)));
    el.children
        .push(XMLNode::Element(write_string("description", reg.description.as_ref().unwrap())));
    el.children.push(XMLNode::Element(write_string(
        "addressOffset",
        &reg.address_offset.to_string(),
    )));

    if let Some(x) = reg.properties.size {
        el.children.push(XMLNode::Element(write_string("size", &x.to_string())));
    }

    if let Some(x) = reg.properties.access {
        el.children.push(XMLNode::Element(write_access(&x)));
    }

    if let Some(x) = reg.properties.reset_value {
        el.children.push(XMLNode::Element(write_string("resetValue", &x.to_string())));
    }

    if let Some(x) = reg.properties.reset_mask {
        el.children.push(XMLNode::Element(write_string("resetMask", &x.to_string())));
    }

    if let Some(x) = reg.fields.as_ref() {
        el.children.push(XMLNode::Element(write_fields(x)))
    }

    if let Some(wc) = reg.write_constraint.as_ref() {
        el.children.push(XMLNode::Element(write_constraint(wc)))
    }

    if let Some(x) = reg.alternate_register.as_ref() {
        el.children
            .push(XMLNode::Element(write_string("alternateRegister", &x.to_string())));
    }

    el
}

fn write_fields(per: &[Field]) -> Element {
    let mut el = Element::new("fields");
    el.children = vec![];

    for r in per {
        el.children.push(XMLNode::Element(write_field(r)));
    }
    el
}

fn write_field(reg: &Field) -> Element {
    let mut el = Element::new("field");
    el.children = vec![];

    el.children.push(XMLNode::Element(write_string("name", &reg.name)));

    if let Some(x) = reg.description.as_ref() {
        el.children.push(XMLNode::Element(write_string("description", x)));
    }

    el.children
        .push(XMLNode::Element(write_string("bitOffset", &reg.bit_range.offset.to_string())));
    el.children
        .push(XMLNode::Element(write_string("bitWidth", &reg.bit_range.width.to_string())));

    if let Some(x) = reg.access {
        el.children.push(XMLNode::Element(write_access(&x)));
    }

    for e in &reg.enumerated_values {
        el.children.push(XMLNode::Element(write_enums(e)))
    }

    if let Some(wc) = reg.write_constraint.as_ref() {
        el.children.push(XMLNode::Element(write_constraint(wc)))
    }

    el
}

fn write_constraint(wc: &WriteConstraint) -> Element {
    let mut wc_el = Element::new("writeConstraint");
    let mut range_el = Element::new("range");

    match *wc {
        WriteConstraint::Range(r) => {
            let mut min_el = Element::new("minimum");
            let mut max_el = Element::new("maximum");
            min_el.children = vec![];
            max_el.children = vec![];

            min_el.children.push(XMLNode::Text(r.min.to_string()));
            max_el.children.push(XMLNode::Text(r.max.to_string()));
            range_el.children.push(XMLNode::Element(min_el));
            range_el.children.push(XMLNode::Element(max_el));
        }
        _ => panic!("unsupported write constraint"),
    }
    wc_el.children.push(XMLNode::Element(range_el));
    wc_el
}

fn write_enums(per: &EnumeratedValues) -> Element {
    let mut el = Element::new("enumeratedValues");
    el.children = vec![];

    if let Some(x) = per.name.as_ref() {
        el.children.push(XMLNode::Element(write_string("name", x)));
    }

    if let Some(x) = per.usage.as_ref() {
        el.children.push(XMLNode::Element(write_usage(x)));
    }

    if let Some(x) = per.derived_from.as_ref() {
        el.attributes = HashMap::new();
        el.attributes.insert("derivedFrom".to_owned(), x.to_owned());
    }

    for e in &per.values {
        el.children.push(XMLNode::Element(write_enum_val(e)));
    }

    el
}

fn write_enum_val(reg: &EnumeratedValue) -> Element {
    let mut el = Element::new("enumeratedValue");
    el.children = vec![];

    el.children.push(XMLNode::Element(write_string("name", &reg.name)));

    if let Some(x) = reg.description.as_ref() {
        el.children.push(XMLNode::Element(write_string("description", x)));
    }

    if let Some(x) = reg.value {
        el.children.push(XMLNode::Element(write_string("value", &x.to_string())));
    }

    if let Some(x) = reg.is_default {
        el.children.push(XMLNode::Element(write_string("isDefault", &x.to_string())));
    }

    el
}

fn write_vendor_extensions() -> Element {
    let mut vendor = Element::new("vendorExtensions");
    let mut msp430_el = Element::new("msp430_svd");

    msp430_el.children.push(XMLNode::Element(write_string("version", env!("VERGEN_GIT_SEMVER"))));
    msp430_el.children.push(XMLNode::Element(write_string("commit_hash", env!("VERGEN_GIT_SHA_SHORT"))));

    vendor.children.push(XMLNode::Element(msp430_el));

    vendor
}
