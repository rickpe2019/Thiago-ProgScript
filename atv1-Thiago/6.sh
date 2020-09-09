#!/bin/bash
mkdir /bin/DATA 2> null
date +%y.%m.%d > /bin/DATA/DATA

dir=$PWD
cp -r $dir /bin/DATA/


tar -czvf DATA.tar.gz /bin/DATA
rm /bin/DATA/*
rmdir /bin/DATA
