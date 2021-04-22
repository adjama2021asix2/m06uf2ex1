#!/bin/bash
#Script p11.sh Adrià Jara

if [[ $EUID -ne 0 ]]; then
   echo "Has de ser root per executar aquest script" 
   exit 1
fi

clear

echo -n "Indica la URL: "
read url
REGEX='(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'
if [[ $url =~ $REGEX ]]
then
	echo "Es una url valida"
	nslookup $url
	exit 0
else
	echo "No es una url valida"
	exit 1	
fi

