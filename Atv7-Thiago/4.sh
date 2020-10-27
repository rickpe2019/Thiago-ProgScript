#!/bin/bash

numeros=0
letras=0

linhas=$(cat $1 | wc -l)
contador=0

while  [ $contador -lt $linhas ]; do

	let contador=contador+1
	
	aux=$(cat $1 | head -$contador | tail -1)
	[[ "$aux" =~ ^([A-Za-z]+)$ ]] && let letras=letras+1
	
	if (echo $aux | egrep '[^0-9]' &> /dev/null); then
		let numeros=numeros+1
	fi
done

echo "numeros: $numeros e letras: $letras"
