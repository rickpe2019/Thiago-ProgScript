#!/bin/bash

dir1=$1
dir2=$2
dir3=$3

ls $dir1 &> /dev/null || exit 0
ls $dir2 &> /dev/null || exit 0
ls $dir3 &> /dev/null || exit 0

echo $(ls | wc -l $dir1 $dir2 $dir3)
