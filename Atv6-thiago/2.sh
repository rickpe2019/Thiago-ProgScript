#!/bin/bash

if [ $a != '' ] 2> /dev/null;then
	echo "A variavel \$a existe e tem valor diferente de vazio: $a"
else
	read -p "insira o valor da variavel A: " a
	echo "Variavel \$A nao existia e seu novo valor e: $a"
fi


if [ $b != '' ] 2> /dev/null;then
	echo "A variavel \$b existe e tem valor diferente de vazio: $b"
else
	read -p "insira o valor da variavel B: " b
	echo "Variavel \$B nao existia e seu novo valor e: $b"
fi




if [ $c != '' ] 2> /dev/null;then
	echo "A variavel \$c existe e tem valor diferente de vazio: $c"
else
	read -p "insira o valor da variavel C: " c
	echo "Variavel \$C nao existia e seu novo valor e: $c"
fi
