#!/usr/bin/env zsh

# func
hasCmd(){
  [ -e "$(which $1 2> /dev/null)" ]
}
# install dir
###################################################
mkdir $HOME/bin
export BIN_HOME=$HOME/bin
export SHELL_HOME=$HOME/.sh.d

# set static file
ln -s .sh.d $HOME/.sh.d
ln -s .zshrc $HOME/.zshrc
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
source install_rbenv.zsh
