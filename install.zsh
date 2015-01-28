#!/usr/bin/env zsh

# func
hasCmd(){
  [ -e "$(which $1 2> /dev/null)" ]
}


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
        ;;
    linux*)  
        ;;
esac
