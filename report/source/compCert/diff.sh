#!/bin/bash
for file in out/*.s
do
filename="${file##*/}"
filename="${filename%.*}"
diff $file annotated/$filename.s > diff/$filename.diff
done