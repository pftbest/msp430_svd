# `msp430_svd`

> DSLite to SVD converter for MSP430

DSLite is a [Texas Instruments-internal](https://e2e.ti.com/support/tools/ccs/f/81/p/520698/1895346#1895346)
file format for describing their microcontroller address layout and
peripherals. For the purposes of using [`svd2rust`](https://github.com/rust-embedded/svd2rust)
with TI devices, `msp430_svd` can generate [System View Description](https://arm-software.github.io/CMSIS_5/SVD/html/index.html)
files instead. SVD may be an ARM format, but the format is nominally
CPU-neutral; TI even previously used SVD for some of their microcontrollers.

This repository supplies a copy of TI's C headers and DSLite files for the
msp430 family. All commands are run from the root directory of this repository.

To generate Peripheral Access Crates (PACs) for SVD files from `msp430_svd`,
you will need at a minimum `svd2rust` version [v0.22.1](https://github.com/rust-embedded/svd2rust/tree/v0.22.1).
_However, `svd2rust` commit [b3457d7](https://github.com/rust-embedded/svd2rust/commit/b3457d7)
or later is preferred in order to take advantage of the new [`critical_section`](https://github.com/rust-embedded/critical-section)
crate_. If using commit b3457d7 or later, you will also need `msp430` and
`msp430-rt` v0.4.0 or later.

## How To Generate An SVD File (Quick Start)
**For now, all commands must be run via `cargo run`; running as an installed
binary is unsupported.**

This command will create two SVD files (`msp430g2553.svd` and `msp430g2553.svd.patched`)
for the MSP430G2553 MCU:

    $ cargo run -- msp430g2553

If you are interested in just getting started quickly, you can stop here, and
use the `msp430g2553.svd` to generate a PAC using `svd2rust`:

    $ svd2rust -g -i msp430g2553.svd --target msp430

However, you will probably want to patch your shiny new SVD file later; this
is what the `msp430g2553.svd.patched` file and `overrides` directory are for.

### Patching
Although the `msp430g2553.svd` output from `msp430_svd` in the first step is
usable as-is, it is likely some register fields in the TI-provided DSLite files
will be wrong or missing. To fix these registers, we can leverage the work of
the [stm32-rs](https://github.com/stm32-rs) team to patch output SVDs using [`svdtools`](https://github.com/stm32-rs/svdtools).

Patches for `svdtools` are kept under `overrides/devices`. There is one patch
file per device, named after the device (e.g. `msp430g2211.yaml`). The `overrides/peripherals`
directory is meant to facilitate code reuse. If a file of the name
`overrides/devices/${MCU}.yaml` exists when `msp430_svd` runs, `msp430_svd`
will invoke `svdtools` to patch the `${MCU}.svd` file based on the YAML file.
The results of `${MCU}.svd` patching are saved in `${MCU}.svd.patched`; `msp430_svd`
will always generate a `${MCU}.svd` file.

If a patch file for your MCU doesn't exist under `overrides/devices`, see the
[next section](#contributing-patches) for a quick start on finding missing
register fields and creating your own patch. The msp430g2553 device is an
example with a relatively complete patch. You may wish to compare the
unpatched and patched output to double-check the results:

    $ cargo run -- msp430g2553
    $ diff -u msp430g2553.svd msp430g2553.svd.patched

## Contributing Patches
`svdtools` patch files are written in a YAML format described [here](https://github.com/rust-embedded/svdtools#device-and-peripheral-yaml-format).
Look at the `overrides/devices` directory for existing examples on how to write
patches, along with the linked documentation.

**`msp430_svd` uses `svdtools` version [`0.3.6`](https://crates.io/crates/svdtools/0.3.6)
(or a later [commit](https://github.com/rust-embedded/svdtools)) to generate
patches.**

### Naming Convention
When possible, I use the MSP430x{1,2,3,4,5,6}xx Family User Guide name for
missing fields and enums in registers. _My theory is that TI deliberately omits
the DSLite-equivalent of SVD fields when the entire register contains a single
field._ In the User Guide, these missing fields tend to be named after the
register itself.

The toolchain files (`msp430-gcc-support-files/include`) seem to omit the field
names as redundant. As of this writing (4-23-2020), removing the redundancy is
not possible to do safely via `svd2rust`- the `bits()` method is always unsafe.

Sometimes, the enum or register name to choose isn't obvious from the User
Guide. In that case, I do a grep of device-specific toolchain files- located
under `msp430-gcc-support-files/include`- for hints. Using `TAIV` for
msp430g2211 as an example:

```
$ grep TAIV msp430-gcc-support-files/include/{msp430g2211.h,msp430g2211.ld,msp430g2221_symbols.ld}
msp430-gcc-support-files/include/msp430g2211.h:sfr_w(TAIV);                                  /* Timer A Interrupt Vector Word */
msp430-gcc-support-files/include/msp430g2211.h:#define TA0IV                  TAIV           /* Timer A Interrupt Vector Word */
msp430-gcc-support-files/include/msp430g2211.h:#define TA0IV_                 TAIV_          /* Timer A Interrupt Vector Word */
msp430-gcc-support-files/include/msp430g2211.h:#define TAIV_NONE              (0x0000)       /* No Interrupt pending */
msp430-gcc-support-files/include/msp430g2211.h:#define TAIV_TACCR1            (0x0002)       /* TACCR1_CCIFG */
msp430-gcc-support-files/include/msp430g2211.h:#define TAIV_2                 (0x0004)       /* Reserved */
msp430-gcc-support-files/include/msp430g2211.h:#define TAIV_6                 (0x0006)       /* Reserved */
msp430-gcc-support-files/include/msp430g2211.h:#define TAIV_8                 (0x0008)       /* Reserved */
msp430-gcc-support-files/include/msp430g2211.h:#define TAIV_TAIFG             (0x000A)       /* TAIFG */
msp430-gcc-support-files/include/msp430g2221_symbols.ld:PROVIDE(TAIV               = 0x012E);
```

### Finding Missing/Wrong Registers
As of this writing (4-23-2020), I'm not sure of a good way to detect missing
or downright incorrect registers before a [PAC](https://rust-embedded.github.io/book/start/registers.html)
from `svd2rust` is generated. Missing registers will of course become apparent
when you try to access a register on a peripheral you know exists, but the
compiler errors unable to find said register name.

It is also possible for registers to be shared between multiple peripherals,
such as certain interrupt enable bits. _This is okay_ as long as the DSLite
file specifies the registers as belonging to at least one (and [_ideally_](https://blog.japaric.io/brave-new-io/#the-hole-in-the-old-model)
one) of the peripherals.

Generating docs via [rustdoc](https://doc.rust-lang.org/rustdoc/what-is-rustdoc.html)
for your PAC and using the search facility is an easy way to distinguishing
missing registers from registers shared by multiple peripherals. I'm not sure
of an obvious way to detect an incorrectly-specified register short of reading
all DSLite files and comparing them to the User Guides (impractical!), or
checking the documentation of your generated PAC for registers that look wrong.

### Registers Missing _Some_ Fields
The same problem as above applies to registers which contain _some_ fields but
not all. I'm aware that msp430 DSLite files completely omit the following
fields:

* `WDTPW` field of the `WDTCTL` register of the Watchdog Timer+ peripheral.

### Registers Without Fields
The DSLite files from TI sometimes completely _omit_ fields for a register.
`msp430_svd` will print out registers with completely missing register fields
and enums while generating an SVD file (msp430g2211 in this example):

```
skipping aliased vector TIMER0_A1_VECTOR
skipping aliased vector TIMER0_A0_VECTOR
warning: no fields in register CALDCO_1MHZ
warning: no fields in register CALBC1_1MHZ
warning: no fields in register TAIV
warning: no fields in register TAR
warning: no fields in register TACCR0
warning: no fields in register TACCR1
```

To fix these registers, read the Family User's Guide for your specific MCU to
find the missing fields and enums- see [Naming Convention](#naming-convention)
section for details.

## Note

Currently reset values for all registers are set to 0,
because I don't have a good way to get them yet.
See https://github.com/pftbest/msp430/issues/4
