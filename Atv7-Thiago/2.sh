#!/bin/bash

while [ ! -e key ]; do
	echo "Arquivo key ainda nao existe, testando novamente em 2 segundos..."
	sleep 2
done

echo "arquivo key encontrado"
