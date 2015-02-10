# pyenv
###################################################
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
add-export PYENV_ROOT=$HOME/.pyenv
add-export PATH=$PYENV_ROOT/bin:$PATH
echo 'eval "$(pyenv init -)"' > $SHELL_HOME/other_sources/pyenv.zsh
ln -sf ~/.pyenv/completions/pyenv.zsh $SHELL_HOME/completions/

# install python
pyenv install 2.7.8
pyenv install 3.4.2
pyenv global 3.4.2
pyenv rehash
add-export PATH=$PYENV_ROOT/shims:$PATH

# pip
###################################################
sudo easy_install pip
pyenv rehash

# virtualenv
###################################################
pip install virtualenv virtualenvwrapper
pyenv rehash
add-export WORKON_HOME=$SHELL_HOME/temp/.virtualenvs
add-export PROJECT_HOME=$SHELL_HOME/temp/Devel
mkdir -p $WORKON_HOME
mkdir -p $PROJECT_HOME
echo 'source $(which virtualenvwrapper.sh)' > $SHELL_HOME/other_sources/virtualenv.sh
