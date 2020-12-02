#!/bin/bash

declare -A lista

while read linha; do
    index=$(echo $linha | awk -f print1.awk)
    valor=$(echo $linha | awk -f print2.awk)
    ((lista[$index] += $valor))
done <$1

for index in ${!lista[*]}; do
    echo "$index ${lista[$index]}"
done
