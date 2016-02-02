#!/bin/bash

B=threewatertank1/build/Darwin/

mkdir -p $B

cmake  -B$B -Hthreewatertank1/

make -C $B
