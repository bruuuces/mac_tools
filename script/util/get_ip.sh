#!/bin/sh

if [ "$#" -ne "1" ]; then
    echo "usage: $0 <domain_name>"
    exit 2
fi

DOMAIN_NAME=$1
TMP_STR=`ping -s 1 -t 1 ${DOMAIN_NAME} | grep -E "^PING " | head -n 1`
echo ${TMP_STR} | cut -d'(' -f 2 | cut -d')' -f1 
