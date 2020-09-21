#!/bin/bash

num="$1"

operacao=$((num %2))

mkdir $operacao 2> /dev/null && echo "impar" && rmdir $operacao && exit 0
mkdir $operacao 2> /dev/null || echo "par"
