#!/usr/bin/env zsh

export SHELL_HOME=$HOME/.sh.d
# set static file
ln -s .sh.d $HOME/.sh.d
ln -s .zshrc $HOME/.zshrc
mkdir $SHELL_HOME/temp
cp .gitconfig $HOME/
