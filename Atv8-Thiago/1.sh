#!/bin/bash

arq=$1
linha=$2

echo "$(cat $arq | head -$linha | tail -1)"
