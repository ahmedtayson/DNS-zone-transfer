#!/bin/bash
if [ -z "$1" ];then
echo "[*] Usage $0 domain.com "
exit 0
fi

for i in $(host -t ns $1 |cut -d" " -f4 );do 
host -l $1 $i | grep "has address"
done