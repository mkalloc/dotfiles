hasCmd(){
  [ "$(whence $1 2> /dev/null)" ]
}
