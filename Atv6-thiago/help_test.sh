#!/bin/bash

aux=$*

if (echo $aux | grep "aritmetica") > /dev/null; then
		echo -e "\nLAritmetica"
	echo "INTEGER1 -eq INTEGER2
              INTEGER1 is equal to INTEGER2
       INTEGER1 -ge INTEGER2
              INTEGER1 is greater than or equal to INTEGER2
       INTEGER1 -gt INTEGER2
              INTEGER1 is greater than INTEGER2
       INTEGER1 -le INTEGER2
              INTEGER1 is less than or equal to INTEGER2
       INTEGER1 -lt INTEGER2
              INTEGER1 is less than INTEGER2
       INTEGER1 -ne INTEGER2
              INTEGER1 is not equal to INTEGER2"

fi

if (echo $aux | grep "strings") > /dev/null; then
	echo -e "\nStrings"
        echo "-n STRING
              the length of STRING is nonzero
       STRING equivalent to -n STRING
       -z STRING
              the length of STRING is zero
       STRING1 = STRING2
              the strings are equal
       STRING1 != STRING2
              the strings are not equal"

fi

if (echo $aux | grep "variaveis") > /dev/null; then
	echo -e "\nVariaveis"
        echo "-n STRING
              the length of STRING is nonzero
       STRING equivalent to -n STRING
       -z STRING
              the length of STRING is zero"
fi

if (echo $aux | grep "arquivos") > /dev/null; then
	echo -e "\nArquivos"
        echo "FILE1 -ef FILE2
              FILE1 and FILE2 have the same device and inode numbers
       FILE1 -nt FILE2
              FILE1 is newer (modification date) than FILE2
       FILE1 -ot FILE2
              FILE1 is older than FILE2
       -b FILE
              FILE exists and is block special
       -c FILE
              FILE exists and is character special
       -d FILE
              FILE exists and is a directory
       -e FILE
              FILE exists
       -f FILE
              FILE exists and is a regular file
       -g FILE
              FILE exists and is set-group-ID
       -G FILE
              FILE exists and is owned by the effective group ID
       -h FILE
              FILE exists and is a symbolic link (same as -L)"

fi


if (echo $aux | grep "logica") > /dev/null; then
	echo -e "\nLogica"
         echo "( EXPRESSION )
              EXPRESSION is true
       ! EXPRESSION
              EXPRESSION is false
       EXPRESSION1 -a EXPRESSION2
              both EXPRESSION1 and EXPRESSION2 are true
       EXPRESSION1 -o EXPRESSION2
              either EXPRESSION1 or EXPRESSION2 is true"

fi
