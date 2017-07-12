# `msp430_svd`

> dslite to SVD converter for MSP430

## How to

This command will create SVD file (out.svd) for MSP430G2553 MCU

    $ cargo run -- msp430g2553 > out.svd

You can reformat the result using xmllint

    $ xmllint -format out.svd > msp430g2553.svd
