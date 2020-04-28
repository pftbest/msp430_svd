Some peripherals have multiple instances, and thus multiple names.
This directory contains patches which don't actually name a peripheral.
They are meant to be `_include`d at peripheral scope.

See `msp430g2553`'s `Timer0_A3` and `Timer1_A3` for an example;
`Timer[0-9]_{A,B}[0-9]` represents "Timer number '[0-9]', type 'A' or 'B',
with '[0-9]' compare registers. MSP430 variants with one timer drop the first
number, leading to the same peripheral being named differently depending on
device.
