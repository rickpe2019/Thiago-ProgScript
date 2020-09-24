#!/bin/bash

arq1=($(wc $1))

ls $1 &> /dev/null || exit 0
((arq1 > 4)) && echo "GOOD"
