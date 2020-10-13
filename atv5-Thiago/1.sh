#!/bin/bash

for (( x=1; x<=21; x++)) do
	(($x % 2 == 0)) && echo "$x"
done


#metodo melhorado

echo "Metodo melhorado"
a=$1
b=$2

for (( x=$a; x<=$b; x++)) do
	(($x % 2 == 0)) && echo "$x"
done
