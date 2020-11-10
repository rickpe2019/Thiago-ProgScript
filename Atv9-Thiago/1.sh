#!/bin/bash

read -p "Digite a opcao a,b ou c: " aux

case $aux in
	a) ls -l | grep ^d | cut -d" " -f9;;

	b) ls -l | grep '^-..x'| cut -d" " -f10;;

	c) ls -l | grep -E '*.sh' | cut -d" " -f10;;



esac
