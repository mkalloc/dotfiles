#!/usr/bin/env zsh
if [ ! -n "$BIN_HOME" ]; then
  mkdir $HOME/bin
  export BIN_HOME=$HOME/bin
  export PATH=$BIN_HOME:$PATH
fi
mkdir $BIN_HOME/brew
export BREW_HOME=$BIN_HOME/brew
export PATH=$BREW_HOME/bin:$PATH
curl -Lsf http://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $BREW_HOME
brew update
