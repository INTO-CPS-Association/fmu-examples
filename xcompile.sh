
#!/bin/bash

B=threewatertank1/build/Darwin/

rm -r $B
mkdir -p $B

cmake  -B$B -Hthreewatertank1/ -DCMAKE_TOOLCHAIN_FILE=`readlink -f toolchains/osx-gcc.cmake`

make -C $B
