#!/bin/bash

arq1=($(ls $1 | wc -l))
arq2=($(ls $2 | wc -l))
arq3=($(ls $3 | wc -l))

((arq1>arq2)) && ((arq1>arq3)) && maior=$1 && ((arq2 > arq3)) && echo "$3 $2 $maior"
((arq2>arq1)) && ((arq2>arq3)) && maior=$2 && ((arq1 > arq3)) && echo "$3 $1 $maior"
((arq2>arq1)) && ((arq2>arq3)) && maior=$2 && ((arq1 < arq3)) && echo "$1 $3 $maior"
((arq3>arq2)) && ((arq3>arq1)) && maior=$3 && ((arq1 > arq2)) && echo "$2 $1 $maior"

