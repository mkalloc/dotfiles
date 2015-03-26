#!/bin/usr/env zsh

set-export(){
  mkdir -p $SHELL_HOME/export/add-export/
  echo "export $1=$2" >> $SHELL_HOME/export/add-export/$1.zsh
}

add-export(){
  export $1
  kv=$(echo $1 | sed 's/=/ /')
  eval "set-export $kv"
}
