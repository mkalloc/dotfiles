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
  source darwin/install_brew.zsh
fi

# brew package
###################################################
brew install openssl

if hasCmd 'wget'; then
  brew install wget
fi

if hasCmd 'git'; then
  brew install git
fi