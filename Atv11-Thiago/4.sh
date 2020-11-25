#!/bin/bash

usuario1=$(cat downloads.txt | head -1 | tail -1 | cut -d " " -f1)
usuario2=$(cat downloads.txt | head -2 | tail -1 | cut -d " " -f1)
usuario3=$(cat downloads.txt | head -4 | tail -1 | cut -d " " -f1)

cont_user1=0
cont_user2=0
cont_user3=0

while read linha; do
	usuario=$(echo ${linha} | awk '{print $1}')
	if [ ${usuario} == ${usuario1} ]; then
		donwloads=$(echo ${linha} | awk '{print $3}')
		cont_user1=$(( cont_user1 + ${donwloads} ))
	elif [ ${usuario} == ${usuario2} ]; then
		donwloads=$(echo ${linha} | awk '{print $3}')
		cont_user2=$(( cont_user2 + ${donwloads} ))
	elif [ ${usuario} == ${usuario3} ]; then
		donwloads=$(echo ${linha} | awk '{print $3}')
		cont_user3=$(( cont_user3 + ${donwloads} ))
	fi
done < downloads.txt
echo "${usuario1}: ${cont_user1} donwloads"
echo "${usuario2}: ${cont_user2} donwloads"
echo "${usuario3}: ${cont_user3} donwloads"

