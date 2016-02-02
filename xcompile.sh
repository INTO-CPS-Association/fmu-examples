#!/bin/bash

function compileDarwin
{

		echo Building Darwin .dylib
		B=$1/build/darwin

		rm -r $B
		mkdir -p $B

		cmake  -B$B -Hthreewatertank1/ -DCMAKE_TOOLCHAIN_FILE=`readlink -f toolchains/osx-gcc.cmake`

		make -C $B

}

function compileWin32
{

		echo Building Win32 .dll
		B=$1/build/win32

		rm -r $B
		mkdir -p $B

		cmake  -B$B -Hthreewatertank1/ -DCMAKE_TOOLCHAIN_FILE=`readlink -f toolchains/cmake-toolchains/Toolchain-Ubuntu-mingw32.cmake`

		make -C $B

}

function compileWin64
{

		echo Building Win64 .dll
		B=$1/build/win64

		rm -r $B
		mkdir -p $B

		cmake  -B$B -Hthreewatertank1/ -DCMAKE_TOOLCHAIN_FILE=`readlink -f toolchains/cmake-toolchains/Toolchain-Ubuntu-mingw64.cmake`

		make -C $B

}

function compileLinux64
{
		echo Building Linux x64 .so
		B=$1/build/linux64

		rm -r $B
		mkdir -p $B

		cmake  -B$B

		make -C $B		
}

function compileLinux32
{
		echo Building Linux x32 .so
		B=$1/build/linux32

		rm -r $B
		mkdir -p $B

		CFLAGS=-m32 cmake  -B$B

		make -C $B		
}

for D in `find . -maxdepth 1 -type d ! -path . ! -path *.git ! -path */includes ! -path */toolchains`
do
		echo "Folder is ${D}"

		compileDarwin $D
		compileLinux64 $D
		compileLinux32 $D
		compileWin32 $D
		compileWin32 $D
		
done

