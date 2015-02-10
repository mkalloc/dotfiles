#!/usr/bin/env zsh
set -e
# set static files
###################################################
add-export GOPATH=$SHELL_HOME/temp/go
mkdir -p $GOPATH
add-export PATH=$GOPATH/bin:$PATH
goel=$(absPath ./go/03-go.el)
[ ! -e "$goel" ] && goel=$(absPath ./package/go/03-go.el)
ln -sf $goel $HOME/.emacs.d/inits/
# install go
###################################################
if hasCmd 'go'; then
else
# os
###################################################
  case ${OSTYPE} in
    darwin*)
      brew install go
      ;;
    linux*)  
      # nop
      ;;
  esac
fi

go get -u github.com/nsf/gocode
go get -u code.google.com/p/rog-go/exp/cmd/godef
go get -u github.com/golang/lint/golint
go get -u github.com/dougm/goflymake
set +e
