# Public FMU Exmaples

This respository is backed by a [build server](https://build.overture.au.dk/jenkins/job/into-cps-public-fmu-examples/) which output the compiled FMUs to: http://overture.au.dk/into-cps/examples/public-fmu-examples/latest/

Each FMU is a folder containing:
 - a `sources` folder containing C or C++ source files
 - a `modelDescription.xml` file
 - a copy of the `CMakeLists.txt` file with the name set to the name of the fmu folder

The build script looks over folders and compiles and assembles the FMUs.
