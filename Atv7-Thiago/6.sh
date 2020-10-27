#!/bin/bash

echo "digitar 1 para falar sobre o terminador ;;
digitar 2 para falar sobre o terminador ;;&
digitar 3 para falar sobre o terminador ;&"

while true; do
	read -p "Digite a opcao: " aux
	
	if [ $aux -eq 1 ]; then
		echo "terminador convencional, o comando é encerrado ao entrar no case"

	elif [ $aux -eq 2 ]; then
		echo "erminador do bash 4.0, o comando não é encerrado, testará os próximos padrões"
	
	elif [ $aux -eq 3 ]; then
		echo "terminador do bash 4.0, o próximo bloco será executado, sem sequer testar o seu padrão"
	fi
	
done
