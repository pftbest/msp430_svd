# Python script to find registers with completely missing fields for a given
# device and peripheral. Generate a YAML template to overrides as output.

import argparse
import os.path
import sys
import subprocess

import yaml
from lxml import etree


if __name__ == "__main__":
    p = argparse.ArgumentParser(formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    p.add_argument("device", help="Device to search for missing registers.")
    p.add_argument("peripheral", help="Peripheral to scan for registers with completely missing fields.")
    p.add_argument("-a", help="Peripheral address alignment", metavar="align", default=2)
    p.add_argument("-o", help="Output file", metavar="out", default=os.path.join("overrides", "peripherals", "out.yaml"))
    args = p.parse_args()

    device_root = os.path.join("msp430-gcc-support-files", "targetdb", "devices")
    device_file = os.path.join(device_root, ".".join([args.device.upper(), "xml"]))
    with open(device_file, "r") as fp:
        dev_tree = etree.parse(fp)

    periph_loc = dict()
    for i in dev_tree.getroot().iter("instance"):
        if i.get("id") in ("MSP430"):
            continue
        periph_loc[i.get("id")] = os.path.join(device_root, i.get("href"))

    try:
        periph_file = periph_loc[args.peripheral]
    except KeyError:
        print("Could not find peripheral {0}.\nPossible peripherals: {1}".format(args.peripheral, periph_loc.keys()), file=sys.stderr)
        sys.exit(-1)

    with open(periph_file, "r") as fp:
        periph_tree = etree.parse(fp)

    missing_regs = list()
    addrs = list()
    for r in periph_tree.getroot().iter("register"):
        addrs.append(int(r.get("offset"), 16))
        if not len(r):
            print("Register {} is completely missing fields.".format(r.get("id")))
            missing_regs.append(r)

    base_addr = min(addrs)

    if base_addr % args.a != 0:
        base_addr = base_addr & ~(args.a - 1)
    print("Base address of {0} is {1:0X}".format(args.peripheral, base_addr))


    yaml_regs = dict()
    for r in missing_regs:
        width = int(r.get("width"))
        yaml_reg = dict()
        yaml_reg["description"] = r.get("description")
        yaml_reg["addressOffset"] = int(r.get("offset"), 16) - base_addr
        yaml_reg["size"] = width
        yaml_reg["resetMask"] = 2**width - 1 # FIXME: Not really correct.

        new_field = dict()
        new_field[r.get("acronym")] = {
            "description" : "{} register".format(r.get("description")),
            "bitOffset" : 0,
            "bitWidth" : width
        }
        yaml_reg["fields"] = new_field

        yaml_regs[r.get("id")] = yaml_reg

    yaml_out = dict()
    yaml_out[args.peripheral] = dict()

    del_prelude = list()
    for r in missing_regs:
        del_prelude.append(r.get("id"))
    yaml_out[args.peripheral]["_delete"] = del_prelude

    yaml_out[args.peripheral]["_add"] = yaml_regs

    for r in missing_regs:
        bounds = "[0, {}]".format(2**width - 1)
        yaml_out[args.peripheral][r.get("id")] = { r.get("id") : bounds }

    with open(args.o, "w") as fp:
        label = subprocess.check_output(["git", "rev-parse", "--short", "HEAD"]).strip().decode("utf-8")
        fp.write("# Machine generated using scripts/missing.py, commit {}\n".format(label))
        yaml.dump(yaml_out, fp)
