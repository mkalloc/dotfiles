if [ -e /etc/redhat-release ]; then
  source linux/redhat/install.zsh
elif [ -e /etc/debian_version ]; then
# debian
elif [ -e /etc/lsb-release ]; then
# ubuntu
else
  echo "other linux"
  [ -e /etc/issue ] && echo cat /etc/issue  
fi
