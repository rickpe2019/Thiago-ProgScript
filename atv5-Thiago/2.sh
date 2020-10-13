#!/bin/bash

for x in $(ls); do
	cat $x | wc -l
done

echo "script melhorado"

for x in $(ls); do
	cat $x | wc -l >> lista.txt
done

cat lista.txt | sort -n -r
rm lista.txt

echo "Script melhor ainda"

aux=$(ls $1)

for x in $aux; do
	cat $x | wc -l >> lista.txt
done

cat lista.txt | sort -n -r
rm lista.txt



