#!/bin/bash

arq1=($(wc $1))
arq2=($(wc $2))
arq3=($(wc $3))

lista=($arq1 $arq2 $arq3)


ordem=`echo ${lista[@]} | tr ' ' '\n' | sort -n | tr '\n' ' '`
echo ${ordem}
