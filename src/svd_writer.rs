use std::convert::Infallible;
use std::error::Error;
use crate::svd::svd::*;
use xmltree::{Element, XMLNode};
use svd_encoder::{Encode, Config};

fn write_string(name: &str, text: &str) -> Element {
    let mut el = Element::new(name);
    el.children = vec![];
    el.children.push(XMLNode::Text(String::from(text)));
    el
}

pub fn write_device(dev: &Device) -> Result<String, Box<dyn Error>> {
    let mut device_xml = dev.encode()?;
    let vendor = VendorExtensions::new();

    device_xml.children.push(XMLNode::Element(vendor.encode().unwrap()));

    let mut out = Vec::new();
    device_xml.write(&mut out)?;
    Ok(String::from_utf8(out)?)
}

struct VendorExtensions {
    msp430_svd: Msp430Svd
}

impl VendorExtensions {
    fn new() -> Self {
        VendorExtensions {
            msp430_svd: Msp430Svd::new()
        }
    }
}

impl Encode for VendorExtensions {
    type Error = Infallible;

    fn encode_with_config(&self, config: &Config) -> Result<Element, Self::Error> {
        let mut vendor = Element::new("vendorExtensions");
        let msp430_el = self.msp430_svd.encode_with_config(config).unwrap();
        vendor.children.push(XMLNode::Element(msp430_el));

        Ok(vendor)
    }
}

struct Msp430Svd {
    version: &'static str,
    commit_hash: &'static str
}

impl Msp430Svd {
    fn new() -> Self {
        Msp430Svd {
            version: env!("VERGEN_GIT_SEMVER"),
            commit_hash: env!("VERGEN_GIT_SHA_SHORT")
        }
    }
}

impl Encode for Msp430Svd {
    type Error = Infallible;

    fn encode_with_config(&self, _config: &Config) -> Result<Element, Self::Error> {
        let mut msp430 = Element::new("msp430_svd");
        msp430.children.push(XMLNode::Element(write_string("version", self.version)));
        msp430.children.push(XMLNode::Element(write_string("commit_hash", self.commit_hash)));

        Ok(msp430)
    }
}
