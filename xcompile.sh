#!/bin/bash

B=threewatertank1/build/Darwin/

mkdir -p $B

cmake  -B$B -Hthreewatertank1/ -DCMAKE_TOOLCHAIN_FILE=toolchains/osx-gcc.cmake

make -C $B
