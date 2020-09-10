#!/bin/bash

echo " SUBSTITUIÇÃO DE VARIÁVEIS"
echo "Em shellScript substituição de variáveis
se refere a ideia de que é possível atribuir valores a
variáveis para que possam ser usadas futuramente no
código, ou usar as variaveis de sistema"
echo "Exemplos a seguir"

cat << EndOfMessage
instituto="ifpb"
echo \${instituto}
>> ifpb

echo \${PWD}
>> vai exibir o diretorio atual

EndOfMessage

echo "a ideia de substituição se refere a executar um comando dentro de outro e atribuir sua saida a ele"
echo "Exemplo a seguir"

cat << EndOfMessage

eu=\$(echo "Ricardo")
echo \${eu}
>> Ricardo

EndOfMessage
