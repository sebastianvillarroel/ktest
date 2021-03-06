<img src="https://oasislmf.org/packages/oasis_theme_package/themes/oasis_theme/assets/src/oasis-lmf-colour.png" alt="Oasis LMF logo" width="250"/>

# ktest

This is the extended test harness for ktools. It runs in Windows or Linux. 

The main tests are;

1) Installer test.  This is the same test as the 'make check' test in ktools.  This repo holds the source control files for the md5 checksums.

2) ftest. This is an extended set of tests for the Financial Module (fmcalc).  It includes the worked examples library which can be found in the [ftest/data](ftest/data/) folder.  The list of worked examples is in [ftest/ftest.xlsx](ftest/ftest.xlsx)

## Instructions

If testing in Windows, Cygwin must be used for running the test. For Cygwin set-up instructions, please see ktools README.md

* Install ktools
* Download this repository
* Configure the test for the operating system. This is either ./configure for linux or ./winconfigure for windows.
* Run the test by running the following the command.

``` sh
$ sh runtests.sh
```

## Questions/problems?

Email support@oasislmf.org

## License
The code in this project is licensed under BSD 3-clause license.
