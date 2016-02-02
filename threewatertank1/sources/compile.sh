#!/usr/bin/env bash

for i in *.c
do
    echo "gcc -g3 -o3 $i -o ${i%.c}.out"
    gcc -c -o3 "$i" -o "${i%.c}.out"
done


echo linking
gcc -shared -o WaterTanks1.dylib *.out
