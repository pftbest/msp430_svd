# Change Log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

## [v0.4.0] - 2022-09-10
- Update _and prune_ targetdb files using Uniflash 7.0 to only those files
  believed to be needed by `msp430_svd`. This should help with repo size.
  Deleted files will be added back on an as-needed basis.

- Update support (include) files to version 1.212 (07/19/2021).

- Add patches for msp430f6736.

- Improve README.md for quickstart and patching.

- Supply version and git commit information in the generated SVD using
  the CMSIS-SVD compliant `version` element. 
  - Update vergen to version 7.4.0.

- Use external crate [`svd-encoder`](https://github.com/rust-embedded/svd/tree/master/svd-encoder)
  to generate SVDs.
  - This fixes bugs in SVD generation such as missing elements and [wrong units](https://github.com/pftbest/msp430_svd/issues/18)
    for `size`.

## [v0.3.0] - 2022-01-25
- Add meaningful instructions to README.md.

- Implement patching system using svdtools upstream (before commit 79a57db),
  then 0.1.13, then 0.1.21.
  - Patches exist for msp430fr4133, msp430g2001, msp430g2211, and msp430g2553
    and their corresponding peripherals.
  - Most patches are purely additive to the generated SVDs (therefore
    semver-compatible). _Breaking changes_ include:
    - timer0_a3 registers were renamed to avoid the "0" in register names.
    - usci_b0_i2c_mode had some registers merged into one.
  - A script, missing.py is provided to help automate patch generation.
  - Patches underwent several changes between svdtools before 79a57db
    and 0.1.13:
    - Patches initially required a [workaround](https://github.com/stm32-rs/svdtools/issues/24)
      for adding registers with missing fields.
    - Patches were initially case insensitive on Windows, but [became](https://github.com/stm32-rs/svdtools/pull/26)
      case sensitive with a bug fix.
    - svdtools `_strip_end` was moved from device scope to peripheral scope
      (unsure which svdtools commit required this).
    - svdtools after 79a57db introduced a bug where children inside
      `vendorExtensions` would raise an exception. Fixed [just before](https://github.com/stm32-rs/svdtools/pull/53)
      0.1.13.
  - No significant differences between 0.1.13 and 0.1.21.

- Supply version and git commit information in the generated SVD using
  the CMSIS-SVD compliant `vendorExtensions` section. Initially vergen 3.1.0
  was used, but then was updated to 6.0.0.

- Remove local copy of svd-parser and use upstream version 0.9.0
  plus PartialEq derivation [fixes](https://github.com/rust-embedded/svd/pull/117),
  then version 0.10.1, then version 0.13.1.

- Use `?` instead of `try!` macro throughout code.

## [v0.2.0] - 2021-04-18
- Update DSLite DB to version 2019/10/06 01:04:57.

- Update xmltree to version 0.10.0.

- Update ordermap to indexmap version 1.3.2.

## v0.1.0 - 2021-04-18
Initial release. Commit was in 2019; CHANGELOG/tagging did not occur until
2021. Commit was chosen based on a stable period between Nov 2019 and Apr 2020
where msp430_svd was used to generate multiple SVDs.

[Unreleased]: https://github.com/pftbest/msp430_svd/compare/v0.4.0...HEAD
[v0.4.0]: https://github.com/pftbest/msp430_svd/compare/v0.3.0...v0.4.0
[v0.3.0]: https://github.com/pftbest/msp430_svd/compare/v0.2.0...v0.3.0
[v0.2.0]: https://github.com/pftbest/msp430_svd/compare/v0.1.0...v0.2.0
