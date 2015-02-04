go-trash(){
  if [ -e $1 ]; then
    mv -f $1 $HOME/.Trash/
  fi
}

rm(){
  for f in $*
  do
    go-trash $f
  done
}