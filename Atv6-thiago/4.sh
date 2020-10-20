#!/bin/bash

aux=0

for x in $*
do
	a=$(cat $x | wc -l)
	if [ $a -ge 6 ];then
		echo "$x passa do tamanho critico de 5 linhas"
		aux=$(($aux+1))
	fi
done

if (( 2 <= aux)); then
	echo "alerta critico"
fi
