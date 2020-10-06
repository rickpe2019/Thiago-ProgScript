#!/bin/bash

mkdir temp 2> /dev/null
ping www.google.com | tee -a ./temp/report.txt
