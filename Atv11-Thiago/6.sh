#!/bin/bash

notas=$1
cont=0

for i in $(awk -f 6.awk $1); do
	cont=$((cont+1))
	if (( $(echo "$i >= 70" |bc -l 2> /dev/null) )); then
		echo "Aluno $(cat downloads.txt | head -$cont | tail -1 | cut -d " " -f1) aprovado"
	fi
done
