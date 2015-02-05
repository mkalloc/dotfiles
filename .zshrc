# env
###################################################
export LANG=ja_JP.UTF-8
export SHELL_HOME=$HOME/.sh.d
export RBENV_HOME=$HOME/.rbenv
export BIN_HOME=$HOME/bin
export PATH=$BIN_HOME:$RBENV_HOME/bin:$RBENV_HOME/shims:$PATH
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# import
###################################################
msource (){
  for s in $*
  do
    source $s
  done
}

# export
###################################################
msource $SHELL_HOME/export

# os dependence
###################################################
msource $SHELL_HOME/os/*.zsh

# option
###################################################
msource $SHELL_HOME/option/*.zsh

# alias
###################################################
msource $SHELL_HOME/alias/*.zsh

# sh
###################################################
msource $SHELL_HOME/script/*.zsh

# ohter
###################################################
msource $SHELL_HOME/other_sources/*.zsh
