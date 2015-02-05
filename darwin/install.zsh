# func
###################################################
installable(){
  if hasCmd $1; then
  else
    echo "$1"
  fi
}

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

# brew package
###################################################
formula=(openssl autoconf automake)
formula+=($(installable wget))
formula+=($(installable git))
formula+=($(installable tmux))
formula+=($(installable reattach-to-user-namespace))

for f in $formula
do
  brew install $f
done
