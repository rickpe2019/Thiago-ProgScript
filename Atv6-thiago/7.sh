#!/bin/bash

lista=$(ls)
novo=$(ls | head -1)

for i in $lista; do
	if [ $i -nt $novo ]; then
		novo=$i
	fi
done

echo $novo
