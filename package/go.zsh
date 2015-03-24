#!/usr/bin/env zsh
set -e
# set static files
###################################################
echo "===> set ENV"
add-export GOPATH=$SHELL_HOME/temp/go
mkdir -p $GOPATH
add-export PATH=$GOPATH/bin:$PATH
echo "===> set el"
goel=$(absPath ./go/03-go.el)
[ ! -e "$goel" ] && goel=$(absPath ./package/go/03-go.el)
ln -sf $goel $HOME/.emacs.d/inits/
# install go
###################################################
if hasCmd 'go'; then
  echo "===> skip install"
else
# os
###################################################
  echo "===> install go"
  case ${OSTYPE} in
    darwin*)
      brew install go
      ;;
    linux*)  
      # nop
      ;;
  esac
fi
echo "===> get packages"
go get -u github.com/nsf/gocode
go get -u code.google.com/p/rog-go/exp/cmd/godef
go get -u github.com/golang/lint/golint
go get -u github.com/dougm/goflymake
set +e
