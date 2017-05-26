#!/bin/bash

for n in $(od -td1 -An)
do
    s=$(( ((s >> 1) + ((s & 1) << 15) + n) & 0xffff ))
done
printf '%04x' $s
