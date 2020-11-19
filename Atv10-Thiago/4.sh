#!/bin/bash

read -p "Digite os 11 numeros para criar o CPF: " cpf

echo $cpf | sed -E 's/([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})/\1.\2.\3-\4/g'
