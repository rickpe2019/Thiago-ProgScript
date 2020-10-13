#!/bin/bash

arq=$*

for i in $arq; do
	ls $i &> /dev/null && echo $i "sim" || echo $i "nao"
done
