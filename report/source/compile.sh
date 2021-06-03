#!/bin/bash
for file in *.c
do
filename="${file%.*}"
$1 $file -S -O0 -o $2$filename-O0.s
$1 $file -S -O3 -o $2$filename-O3.s
done