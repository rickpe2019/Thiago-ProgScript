#!/bin/bash




read -p "Digite a senha a ser verificada   >" senha

#grep -E '[a-z]' <<< $senha &> /dev/null && grep -E '[A-Z]' <<< $senha &> /dev/null && grep -E '[0-9]' <<< $senha &> /dev/null && echo "ok senha dentro do padrão" || echo -e "senha fora do padrão"

echo $senha | grep -E '([a-z])([0-9])' | grep -E '([A-Z])' && echo "senha no padrao" || echo -e "senha fora do padrao"
