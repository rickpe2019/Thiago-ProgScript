#!/bin/bash


contador=1
linhas=3
linha=1
aux=$(cat $1 | head -1 | wc -c)


while [ $contador -lt $aux ]; do
	contador=$(($contador+3))
	cat $1 | cut -c $linha-$linhas
	linhas=$(($linhas+3))
	linha=$(($linha+3))
	echo $linha $linhas
	read -p " " utilitario
	case $utilitario in
		"\n") echo "proximo"
	esac
done
