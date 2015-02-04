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

# set static file
ln -s $(absPath .sh.d) $HOME/.sh.d
ln -s $(absPath .zshrc) $HOME/.zshrc
mkdir $SHELL_HOME/temp
cp .gitconfig $HOME/

# os
case ${OSTYPE} in
  darwin*)
    source darwin/install.zsh
    source install_rbenv.zsh
    ;;
  linux*)  
    ;;
esac
