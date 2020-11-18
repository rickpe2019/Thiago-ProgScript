#!/bin/bash


arq=$1

read -p "digite sua opcao:  " aux

if [ $aux = 'a' ]; then
	cat $arq | sed -E 's/[a-zA-Z]//g'
	
elif [ $aux = 'b' ]; then
	sed -E 's/[0-9]//g' < $arq

elif [ $aux = 'c' ]; then
	cat $arq | sed -E 's/[^0-9A-Za-z]//g'
else

	echo "opcao invalida"
fi
