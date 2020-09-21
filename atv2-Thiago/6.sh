#!/bin/bash

echo "Usuarios do sistems"
cat /etc/passwd | wc -l

echo "usa Bin/bash"
echo $(grep "/bin/bash" /etc/passwd | wc -l)


echo "Usuarios que nao usa bin/bash"

var1=`cat /etc/passwd | wc -l`
var2=`echo $(grep "/bin/bash" /etc/passwd | wc -l)`

echo $((var1-var2))
