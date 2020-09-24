#!/bin/bash

arq1=($(wc $1))
arq2=($(wc $2))
arq3=($(wc $3))


(( arq1>arq2)) && ((arq1>arq3)) && echo "arq 1 maior"
(( arq2>arq1)) && ((arq2>arq3)) && echo "arq 2 maior"
(( arq3>arq2)) && ((arq3>arq1)) && echo "arq 3 maior"
