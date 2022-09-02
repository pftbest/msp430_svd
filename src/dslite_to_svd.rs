use crate::dslite_parser;
use crate::header_parser;
use crate::inflector::Inflector;
use crate::svd::svd;

trait StringEx {
    fn fix_name(&self) -> String;
}

impl StringEx for String {
    fn fix_name(&self) -> String {
        self.to_screaming_snake_case()
            // Some fixups to make the names look nicer
            .replace("RTC_REAL_TIME_CLOCK", "RTC")
            .replace("SFR_SPECIAL_FUNCTION_REGISTERS", "SFR")
            .replace("PMM_POWER_MANAGEMENT_SYSTEM", "PMM")
            .replace("RC_RAM_CONTROL_MODULE", "RC")
            .replace("UCS_UNIFIED_SYSTEM_CLOCK", "UCS")
            .replace("SYS_SYSTEM_MODULE", "SYS")
            .replace("MPY_16_MULTIPLIER_16_BIT_MODE", "MPY_16")
            .replace("MPY_32_MULTIPLIER_32_BIT_MODE", "MPY_32")
            .replace("CS_CLOCK_SYSTEM", "CS")
    }
}

fn get_bits(offset: u32, width: u32) -> u64 {
    let mask = (1u64 << width) - 1;
    mask << offset
}

#[test]
fn test_get_bits() {
    let v = get_bits(0, 2);
    assert_eq!(v, 3);
}

pub fn build_svd_device(
    dev: &dslite_parser::Device,
    interrupts: &header_parser::Interrupts,
) -> svd::Device {
    let mut peripherals = Vec::new();
    for (_, m) in &dev.modules {
        let base_address = m.registers.iter().map(|r| r.offset).min().unwrap_or(0) & (!1);
        assert!(base_address < (1 << 16));
        assert!(base_address % 2 == 0);

        let mut registers = Vec::new();
        for reg in &m.registers {
            let offset = reg.offset - base_address;
            assert!(offset < (1 << 16));
            if reg.width > 1 {
                assert!(offset % 2 == 0);
            }

            let reset_mask = match reg.width {
                1 => 0xff,
                2 => 0xffff,
                4 => 0xffff_ffff,
                _ => panic!("invalid width"),
            };

            let mut fields = Vec::new();
            for f in &reg.fields {
                let mut enums = Vec::new();
                for e in &f.enums {
                    let ev = svd::enumeratedvalue::EnumeratedValueBuilder::default()
                        .name(e.name.clone())
                        .description(Some(e.description.clone()))
                        .value(Some(e.value.into()))
                        .is_default(None)
                        .build(svd::ValidateLevel::Disabled).unwrap();
                    enums.push(ev);
                }

                let field_constraint = None;
                if enums.is_empty() && f.width > 1 {
                    eprintln!("warning: no enums for field {}", f.name);
                    // field_constraint =
                    //     Some(svd::WriteConstraint::Range(svd::WriteConstraintRange {
                    //         min: 0,
                    //         max: (1 << f.width) - 1,
                    //     }));
                }
                let access = match f.rwa {
                    dslite_parser::Access::ReadWrite => svd::Access::ReadWrite,
                    dslite_parser::Access::ReadOnly => svd::Access::ReadOnly,
                    dslite_parser::Access::WriteOnly => svd::Access::WriteOnly,
                };

                let field_info = svd::FieldInfoBuilder::default()
                    .name(f.name.clone())
                    .description(Some(f.description.clone()))
                    .bit_range(svd::bitrange::BitRange {
                        offset: f.offset,
                        width: f.width,
                        range_type: svd::bitrange::BitRangeType::OffsetWidth
                    })
                    .access(Some(access))
                    .enumerated_values(if !enums.is_empty() {
                        vec![svd::enumeratedvalues::EnumeratedValuesBuilder::default()
                            .name(None)
                            .usage(None)
                            .derived_from(None)
                            .values(enums)
                            .build(svd::ValidateLevel::Disabled).unwrap()]
                    } else {
                        vec![]
                    })
                    .write_constraint(field_constraint)
                    .modified_write_values(None)
                    .build(svd::ValidateLevel::Disabled).unwrap();

                let field = svd::field::Field::Single(field_info);

                //  {
                //     name: f.name.clone(),
                //     description: Some(f.description.clone()),
                //     bit_range: svd::BitRange {
                //         offset: f.offset,
                //         width: f.width,
                //     },
                //     access: Some(access),
                //     enumerated_values: if enums.len() != 0 {
                //         vec![svd::EnumeratedValues {
                //             name: None,
                //             usage: None,
                //             derived_from: None,
                //             values: enums,
                //         }]
                //     } else {
                //         vec![]
                //     },
                //     write_constraint: field_constraint,
                // };
                fields.push(field);
            }

            let mut reg_constraint = None;
            if fields.is_empty() {
                eprintln!("warning: no fields in register {}", reg.name);
            }

            // check that fields have correct range
            let mut field_test = !get_bits(0, reg.width * 8);
            for f in &fields {
                let field_bits = get_bits(f.bit_range.offset, f.bit_range.width);
                if field_test & field_bits != 0 {
                    eprintln!("error: bad field {} in register {}", f.name, reg.name);
                }
                field_test |= field_bits;
            }

            // if all fields are single bit and cover the entire register
            // then allow to write any value
            if (fields.len() == reg.width as usize * 8)
                && (fields.iter().all(|f| f.bit_range.width == 1))
            {
                reg_constraint = Some(svd::WriteConstraint::Range(svd::writeconstraint::WriteConstraintRange {
                    min: 0,
                    max: ((1u64 << (reg.width * 8)) - 1),
                }));
            }

            let mut props : svd::RegisterProperties = Default::default();
            props.size = Some(reg.width * 8);
            props.reset_value = None;
            props.reset_mask = Some(reset_mask);
            props.access = None;

            let ri = svd::RegisterInfoBuilder::default()
                .name(reg.name.fix_name())
                .description(Some(reg.description.clone()))
                .address_offset(offset)
                .fields(if fields.is_empty() {
                    None
                } else {
                    Some(fields)
                })
                .properties(props)
                .write_constraint(reg_constraint)
                .alternate_register(reg.alternate.clone())
                .build(svd::ValidateLevel::Disabled).unwrap();
            registers.push(svd::RegisterCluster::Register(svd::Register::Single(ri)));
        }

        let p = svd::peripheral::PeripheralInfoBuilder::default()
            .name(m.name.fix_name())
            .group_name(None)
            .description(Some(m.description.clone()))
            .base_address(base_address.into())
            .interrupt(None)
            .registers(Some(registers))
            .derived_from(None)
            .build(svd::ValidateLevel::Disabled).unwrap();
        peripherals.push(svd::MaybeArray::Single(p));
    }

    if !interrupts.vectors.is_empty() {
        peripherals.push(svd::MaybeArray::Single(svd::peripheral::PeripheralInfoBuilder::default()
            .name("_INTERRUPTS".to_owned())
            .group_name(None)
            .description(None)
            .base_address(interrupts.base_offset.into())
            .interrupt(Some(interrupts
                .vectors
                .iter()
                .map(|int| {
                    svd::interrupt::InterruptBuilder::default()
                        .name(int.name.clone())
                        .description(Some(int.description.clone()))
                        .value(int.value)
                        .build(svd::ValidateLevel::Disabled).unwrap()
                })
                .collect()))
            .registers(None)
            .derived_from(None)
            .build(svd::ValidateLevel::Disabled).unwrap()));
    }

    let mut props : svd::RegisterProperties = Default::default();
    props.size = Some(2*8);
    props.reset_value = Some(0);
    props.reset_mask = None;
    props.access = Some(svd::Access::ReadWrite);

    svd::device::DeviceBuilder::default()
        .name(dev.name.fix_name())
        .width(16)
        .peripherals(peripherals)
        .default_register_properties(props)
        .build(svd::ValidateLevel::Disabled).unwrap()
}
