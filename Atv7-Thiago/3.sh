#!/bin/bash

while true; do
	read -p "digite uma opcao: " aux
	case $aux in
		"d") ls -d */  ;;
		"f") find -maxdepth 1 -iname "*.*" | tr "./" " " ;;
		"q") break ;;
		"v") read -p "diga o arquivo: " arq; cat $arq ;;
		"cd") read -p "diga o diretorio: " dir; $(cd $dir) ;;
	esac

done
