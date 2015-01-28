# install java
###################################################
java -version

# notice gcc
###################################################
if hasCmd 'gcc'; then

else
  echo "you must install xcode from appstore"
fi

# install brew
###################################################
if hasCmd 'brew'; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

