#!/bin/bash

arq=$1

count=$(cat $arq |wc -l)
partes=$(($count/10))

aux2=$(($partes+1))
contador=0


while [ $contador -lt $aux2 ]; do
	contador+=1
	aux=$(($contador*10))
	echo " $(cat $arq | head -$aux | tail -10)"
	read -p " " utilitario
	case $utilitario in
		"\n") echo "proximo"
	esac
done
