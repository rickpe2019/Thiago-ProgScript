#!/bin/bash

A=$(ls -l $1)
echo $A > info.txt
B=$(ls -l $2)
C=$(ls -l $3)
echo $B >> info.txt
echo $C >> info.txt
