#!/bin/bash

function compileDarwin
{

echo Darwin
B=$1/build/Darwin
echo $B

rm -r $B
mkdir -p $B

cmake  -B$B -Hthreewatertank1/ -DCMAKE_TOOLCHAIN_FILE=`readlink -f toolchains/osx-gcc.cmake`

make -C $B

}

for D in `find . -maxdepth 1 -type d ! -path . ! -path *.git ! -path */includes ! -path */toolchains`
do
	echo "Folder is ${D}"

compileDarwin $D

done

