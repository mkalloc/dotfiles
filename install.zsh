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
export BIN_HOME=$HOME/bin
export SHELL_HOME=$HOME/.sh.d
export COMPLETION_HOME=$SHELL_HOME/completions
export SHELL_HOME_REPO=$(pwd)

# set static file
mkdir $BIN_HOME
ln -fs $(absPath .sh.d) $HOME
ln -fs $(absPath .zshrc) $HOME
ln -fs $(absPath .tmux.conf) $HOME
ln -fs $(absPath .emacs) $HOME
ln -fs $(absPath .emacs.d) $HOME
mkdir $SHELL_HOME/temp
mkdir $COMPLETION_HOME
mkdir $SHELL_HOME/export
mkdir $SHELL_HOME/other_sources
cp .gitconfig $HOME/

# os
case ${OSTYPE} in
  darwin*)
    source darwin/install.zsh
    source install_rbenv.zsh
    ;;
  linux*)  
    source linux/install.zsh
    ;;
esac

# invoke
. ~/.zshrc

# set export
add-export SHELL_HOME_REPO=$SHELL_HOME_REPO
