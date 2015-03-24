# rbenv
###################################################
if hasCmd 'rbenv'; then
else
  export RBENV_HOME=$HOME/.rbenv
  export PATH=$RBENV_HOME/bin:$PATH
  git clone https://github.com/sstephenson/rbenv.git $RBENV_HOME
  git clone https://github.com/sstephenson/ruby-build.git $RBENV_HOME/plugins/ruby-build
  ln -s $RBENV_HOME/completions/rbenv.zsh $SHELL_HOME/completions
  echo 'eval "$(rbenv init -)"' > $SHELL_HOME/other_sources/rbenv.zsh
  eval "$(rbenv init -)"
# install ruby
###################################################
  rbenv install 2.2.0
  rbenv global 2.2.0
  rbenv rehash
  export PATH=$RBENV_HOME/shims:$PATH
  gem install bundler
  rbenv rehash
fi