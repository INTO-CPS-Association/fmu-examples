# Public FMU Exmaples

This respository is backed by a build server which output the compiled FMUs to: ...

Each FMU is a folder containing:
 - a `sources` folder containing C or C++ source files
 - a `modelDescription.xml` file
 - a copy of the `CMakeLists.txt` file with the name set to the name of the fmu folder

The build script looks over folders and compiles and assembles the FMUs.


# Packages

- zip

```bash
sudo apt-get install zip
```

- PThread

```bash
sudo apt-get install libpthread-stubs0-dev
```

# Compilers

## MinGW

```bash
sudo apt-get install mingw-w64 g++-mingw-w64
```

## OSX

```bash
# remove existing llvm stuff
sudo apt-get remove clang-3.4
sudo apt-get remove --auto-remove clang-3.4
sudo apt-get remove llvm-3.4
# install required compilers
sudo apt-get install gcc g++
```

https://github.com/tpoechtrager/osxcross

- copy sdk
- run dependency script `sudo tools/get_dependencies.sh`
- build `./build_clang.sh`

