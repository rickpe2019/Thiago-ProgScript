#!/bin/bash

for i in $*; do
	if [ -x $i ]; then
		echo "$i e um executavel"
	fi
done
