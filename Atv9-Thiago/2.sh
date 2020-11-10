#!/bin/bash

read -p "Voce deseja remover a linha(1) ou contar(2)? >" cont

arq=$1

((cont == 1)) && grep -v -E '^$' $arq > tmp && mv tmp $arq
((cont == 2)) && grep -E '^$' $arq | wc -l
