#!/usr/bin/env zsh

# set static files
###################################################
cl=$(absPath ./commonlisp/03-commonlisp.el)
[ ! -e "$cl" ] && cl=$(absPath ./commonlisp/03-commonlisp.el)
ln -sf $cl $HOME/.emacs.d/inits/

# install sbcl
###################################################
if hasCmd 'sbcl'; then
else
# os
###################################################
  case ${OSTYPE} in
    darwin*)
      brew install sbcl
      ;;
    linux*)  
      # nop
      ;;
  esac
fi

# install SLIME
###################################################
# curl -L http://common-lisp.net/project/slime/snapshots/slime-current.tgz | tar x
# mv slime-* ~/.emacs.d/slime
