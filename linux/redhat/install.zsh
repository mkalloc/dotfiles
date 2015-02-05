set -e
sudo yum update && sudo yum upgrade
sudo yum groupinstall 'Development Tools' && sudo yum install curl git irb m4 ruby texinfo bzip2-devel curl-devel expat-devel ncurses-devel zlib-devel

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
export PATH=$HOME/.linuxbrew/bin:$PATH
echo "export PATH=$HOME/.linuxbrew/bin:$PATH" > $SHELL_HOME/export/brew.zsh

brew update
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

set +e
