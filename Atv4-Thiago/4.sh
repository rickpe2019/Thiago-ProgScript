#!/bin/bash
workdir=”/tmp/workdir” 2> /dev/null
mkdir $workdir


cd $workdir 2> /dev/null
ls $1 2> /dev/null || exit 1
ls $2 2> /dev/null || exit 1
ls $3 2> /dev/null || exit 1

{
cat $1 $2 $3 | tr ‘ ‘ ‘\n’ | sort | grep -v “comentario”
} 2> /dev/null
