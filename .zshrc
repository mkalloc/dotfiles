# env
###################################################
export LANG=ja_JP.UTF-8
export SHELL_HOME=$HOME/.sh.d
export RBENV_HOME=$HOME/.rbenv
export BIN_HOME=$HOME/bin
export PATH=$RBENV_HOME/bin:$RBENV_HOME/shims:$PATH
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# any
###################################################
sources (){
  for s in $*
  do
    source $s
  done
}

# option
###################################################
sources $SHELL_HOME/option/*.zsh

# alias
###################################################
sources $HOME/.sh.d/alias/*.zsh

# sh
###################################################
sources $HOME/.sh.d/script/*.zsh

# rbenv
###################################################
source $RBENV_HOME/completions/rbenv.zsh
eval "$(rbenv init -)"
