#!/bin/bash

while read ip; do

    (ping -c 4 $ip) || echo "Não foi possível acessar o ip: $ip

	"

done <ips.txt
