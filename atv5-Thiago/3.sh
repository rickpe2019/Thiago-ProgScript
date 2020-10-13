#!/bin/bash

aux=0
for (( x=1; x<=20; x++)) do
	aux=$(($x + $aux))
	echo $aux
done

echo "Script melhorado"

aux=0
for (( x=$1; x<=$2; x++)) do
	aux=$(($x + $aux))
	echo $aux
done
