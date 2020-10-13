#!/bin/bash

dir=$(echo {A..Z})
mkdir $dir

for x in $dir ; do

cat > "./$x/$x.py" << newline
#!/usr/bin/env python3
print(“Rapi Hellow Uin!”)
newline
chmod +x "./$x/$x.py"

done
