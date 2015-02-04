#!/usr/bin/env zsh

# func
hasCmd(){
  [ "$(whence $1 2> /dev/null)" ]
}

absPath(){
  abspath=$(cd $(dirname $1) && pwd)
  echo ${abspath%/}/$(basename $1)
}

# install dir
###################################################
mkdir $HOME/bin
export BIN_HOME=$HOME/bin
export SHELL_HOME=$HOME/.sh.d
export COMPLETION_HOME=$SHELL_HOME/completions

# set static file
ln -s $(absPath .sh.d) $HOME
ln -s $(absPath .zshrc) $HOME
mkdir $SHELL_HOME/temp
mkdir $COMPLETION_HOME
cp -u .gitconfig $HOME/

# os
case ${OSTYPE} in
  darwin*)
    source darwin/install.zsh
    source install_rbenv.zsh
    ;;
  linux*)  
    ;;
esac
