export BREW_HOME=/usr/local
export PATH=$BREW_HOME/bin:$PATH
if [ -n "$BIN_HOME" ]; then
  export PATH=$BIN_HOME:$PATH
fi