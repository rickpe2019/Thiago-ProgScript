#!/bin/bash 

read -p "arquivo : " arq
awk -f 2m.awk $arq >> meninos.txt
awk -f 2f.awk $arq >> meninas.txt
echo "arquivo com nomes separados criado com sucesso"
