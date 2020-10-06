#!/bin/bash

aux=1
ls 1.log &> /dev/null && aux=0
ls 2.log &> /dev/null && aux=0
	
((${aux} == 0)) && echo -e "log de sucesso \n" > 3.log
((${aux} == 0)) && cat 1.log >> 3.log
((${aux} == 0)) && echo -e "log de falha \n" >> 3.log
((${aux} == 0)) && cat 2.log >> 3.log


while true; do
    a=$(( ${RANDOM} % 10 ))
    touch ${a} 2>> 2.log && echo “$(date +%H:%M) ${a}: criado!” >> 1.log
    sleep 1
b=$(( ${RANDOM} % 10 ))
    rm ${b} 2>> 2.log && echo “$(date +%H:%M) ${b}: removido!” >> 1.log
done


