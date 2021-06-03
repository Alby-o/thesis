#!/bin/bash
for file in *.c
do
filename="${file%.*}"
$1 *.c -S -O0
mv $filename.s $filename-O0.s
$1 *.c -S -O3
mv $filename.s $filename-O3.s
done