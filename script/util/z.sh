#!/bin/sh

if [ $# -lt 1 ]; then
  . $0 -l
  return
fi

CONFIG_FILE="$HOME/.toolsInfo/z/alias.conf"

if [ $1 = '-l' ]; then
  cat $CONFIG_FILE
  return
elif [ $1 = '-a' ]; then
  echo "$2=$3" >> $CONFIG_FILE
  cat $CONFIG_FILE
  return
elif [ $1 = '-e' ]; then
  vim $CONFIG_FILE
  return
fi

Z_PATH=`cat $CONFIG_FILE | grep "$1=" | awk -F '=' '{print($2)}' | head -n 1`
cd $Z_PATH
