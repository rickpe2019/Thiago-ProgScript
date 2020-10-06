#!/bin/bash

echo "redirecionador"
bc < operador.txt

echo "pipe"
cat operador.txt | bc
