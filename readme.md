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

# Checkout

Remember to do:

```bash
git submodule update --init
```
this will fetch the mingw toolchain files

# Compilers

## MinGW

```bash
sudo apt-get install mingw-w64 g++-mingw-w64
```

## OSX

```bash
# install required compilers
sudo apt-get install gcc g++
```

https://github.com/tpoechtrager/osxcross

- copy sdk
- run dependency script `sudo tools/get_dependencies.sh`
- build `./build_clang.sh`
- add the compiler to the path `echo 'export PATH=$PATH:/home/vagrant/osxcross/target/bin'  >> ~/.bash_profile`
- also add it for the cmake toolchain `echo 'export OSXCROSS_ROOT=/home/kel/osxcross/target' >> ~/.bash_profile`
- source the profile `source ~/.bash_profile`


# FMU

```bash
sudo apt-get install cmake make
```

## if the systems cmake is only 2.8

- 1. Installation by a PPA (Upgrade to 3.2)
```bash
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:george-edison55/cmake-3.x
sudo apt-get update
```
-  When cmake is not yet installed:
 ```bash
sudo apt-get install cmake
```
- When cmake is already installed:
 ```bash
sudo apt-get upgrade
```

