#!/bin/bash

read -p "Digite a palavra proibida: " palavra


grep $palavra $1 &> /dev/null && echo "Possui o nome proibido: $1" && mv $1 /tmp
grep $palavra $2 &> /dev/null && echo "Possui o nome proibido: $2" && mv $2 /tmp
grep $palavra $3 &> /dev/null && echo "Possui o nome proibido: $3" && mv $3 /tmp
