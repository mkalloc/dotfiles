add-export(){
  echo "export $1" >> $SHELL_HOME/export/add-export.zsh
  export $1
}
