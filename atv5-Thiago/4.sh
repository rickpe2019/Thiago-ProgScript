#!/bin/bash

rm num.txt 2> /dev/null

for i in $(seq 1 101); do
	echo $(( RANDOM % 100 )) >> num.txt
done

cat num.txt | wc -l

echo "script com a melhora"

aux=0
for x in $(cat num.txt) ; do
	aux=$(($x + $aux))
done
echo "Total: " $aux
