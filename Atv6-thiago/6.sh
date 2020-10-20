#!/bin/bash

lss=$(ls)

for i in $lss; do
	for y in $lss; do
		if [ -f $i -a -f $y -a $i != $y -a $(cat $i | wc -l) -eq $(cat $y | wc -l) ]; then
			echo "$i e $y tem a mesma quantidade de linha"
		fi
	done
done
