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

**You will need `svd2rust` version [v0.20.0](https://github.com/rust-embedded/svd2rust/tree/v0.20.0)
or later to generate PACs for SVD files from `msp430_svd`.**

Contrary to `svd2rust` version [v0.20.0](https://github.com/rust-embedded/svd2rust/tree/v0.20.0)
and [v0.21.0](https://github.com/rust-embedded/svd2rust/tree/v0.21.0) docs, you
will also need `msp430` and `msp430-rt` v0.3.0; **v0.2.x does not work with
recent Rust compilers due to the [removal](https://github.com/rust-lang/rust/pull/92816)
of the `llvm_asm` macro around the same time as the `svd2rust` v0.21.0 release.**

## How To Generate An SVD File (Quick Start)
This command will create an SVD file (`out.svd`) for the MSP430G2553 MCU:

    $ cargo run -- msp430g2553 > out.svd

You can reformat the result using `xmllint`:

    $ xmllint -format out.svd > msp430g2553.svd

If you are interested in just getting started quickly, you can stop here and
generate a PAC using `svd2rust`:

    $ svd2rust -g -i msp430g2553.svd --target msp430

However, you will probably want to patch your shiny new SVD file later (as well
as [format](https://docs.rs/svd2rust/latest/svd2rust/#target--msp430) the
generated crate).

### Patching
Although the the output from `msp430_svd` in the first step is usable as-is,
it is likely some register fields in the TI-provided DSLite files will be wrong
or missing. To fix these registers, we can leverage the work of the [stm32-rs](https://github.com/stm32-rs)
team to patch the output of `msp430_svd` using [`svdtools`](https://github.com/stm32-rs/svdtools).

`svdtools` is written in Python. The stable version can be installed from
[PyPI](https://pypi.org/project/svdtools):

    $ pip3 install svdtools

Patches are kept under `overrides/devices`. There is one patch file per device,
named after the device (e.g. `msp430g2211.yaml`). The `overrides/peripherals`
directory is meant to facilitate code reuse.

If a patch file for your MCU doesn't exist under `overrides/devices`, see the
[next section](#contributing-patches) for a quick start on finding missing
register fields and creating your own patch.

### How To Patch (Quick Start)

Create a patch by invoking `svd` like the following for your device (continuing
to use msp430g2553 as an example):

    $ svd patch overrides/devices/msp430g2553.yaml

The output of the above command will be written to `msp430g2211.svd.patched`
(hardcoded). You can format the patched portions by running `xmllint`:

    $ xmllint -format msp430g2553.svd.patched --output msp430g2553.svd.patched

At this point, you may wish to compare the original _formatted_ output to the
patched output to double-check the results:

    $ diff -u {{DEVICE}}.svd {{DEVICE}}.svd.patched

## Contributing Patches
`svdtools` patch files are written in a YAML format described [here](https://pypi.org/project/svdtools/#device-and-peripheral-yaml-format).
Look at the `overrides/devices` directory for existing examples on how to write
patches, along with the linked documentation.

**You will need `svdtools` version [`0.1.21`](https://pypi.org/project/svdtools/0.1.21/)
(or a later [commit](https://github.com/stm32-rs/svdtools/tree/v0.1.21)) to
generate patches for your SVD file.**

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
