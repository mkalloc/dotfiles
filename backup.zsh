#/usr/bin/env bash

export DOT_FILE=$HOME/dotfile_backup/
cd $HOME

mkdir $DOT_FILE 2> /dev/null
mv $HOME/.zsh*  $DOT_FILE
mv $HOME/.emacs* $DOT_FILE
