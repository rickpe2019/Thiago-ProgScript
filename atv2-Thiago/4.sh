#!/bin/bash

arq1="$1"
arq2="$2"
arq3="$3"


ls $arq1 $arq2 $arq3 &> /dev/null || exit 0
echo $(wc -l $arq1 $arq2 $arq3)
