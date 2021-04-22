#!/bin/bash
#Script p08.sh Adrià Jara

if [[ $EUID -ne 0 ]]; then
   echo "Has de ser root per executar aquest script" 
   exit 1
fi

clear

cat /etc/fstab | grep UUID | cut -c 1-41
   echo "Núm de UUID trobades: " 
cat /etc/fstab | grep UUID | wc -l
exit 0
