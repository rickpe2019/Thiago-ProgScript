#!/bin/bash


echo "Digite o conjunto de numeros  >>" ; read -a numeros

menor=${numeros[0]}

for num in "${numeros[@]}";do
	if [[ "$num" -lt "$menor" ]]; then
		menor=$num
	fi
done

echo $menor
