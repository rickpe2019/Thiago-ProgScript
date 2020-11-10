#!/bin/bash

read -p "Insira o valor para ser testado   >" num

if (echo $num | grep -E '^R\$ ([0-9]{1,3}(\.[0-9]{3})*|[0-9]+)(\,[0-9]{2})?$'); then
    echo 'Padrao Real Brasileiro'
else
    echo 'Fora do Padrao'
fi
