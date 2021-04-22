#!/bin/bash
#Script p03.sh Adrià Jara

if [[ $EUID -ne 0 ]]; then
   echo "Has de ser root per executar aquest script" 
   exit 1
fi
clear

echo -n "Indica el servei que es vol deshabilitar: "
read servei
echo -n "Estat $servei: "
 sudo systemctl stop $servei
 echo -n " "
 sudo systemctl is-active $servei
echo -n "Vols continuar? : "
read resposta
if [ $resposta = "c" ]; then
 sudo bash /home/adjama/m06uf2ex/p03.sh
else
   exit 10
fi

