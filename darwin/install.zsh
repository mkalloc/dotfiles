# install java
###################################################
java -version

# notice gcc
###################################################
if [ -e $(which gcc 2> /dev/null) ]; then

else
  echo "you must install xcode from appstore"
fi

# install brew
###################################################
if [ -e $(which brew 2> /dev/null) ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi