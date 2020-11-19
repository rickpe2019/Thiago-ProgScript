#!/bin/bash

read -p "Digite o numero  >" aux

echo $aux |sed -E 's/[0-9]{5}-[0-9]{4}/"*CENSURADO*"/g'
