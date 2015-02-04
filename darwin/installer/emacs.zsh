# func
###################################################
absPath(){
  abspath=$(cd $(dirname $1) && pwd)
  echo ${abspath%/}/$(basename $1)
}

# export
###################################################
if [ ! -e $SHELL_HOME ] && [ ! -e $SHELL_HOME/temp ]; then
  export SHELL_HOME=$HOME/.sh.d
  mkdir -p $SHELL_HOME/temp
fi

if [ ! -e $BIN_HOME ]; then
  export BIN_HOME=$HOME/bin
  mkdir $BIN_HOME
fi

# begin
###################################################
CURRENT_DIR=$(pwd)
cd $SHELL_HOME/temp

# download
###################################################
curl -L http://ftp.gnu.org/pub/gnu/emacs/emacs-24.4.tar.xz | tar x
curl -L ftp://ftp.math.s.chiba-u.ac.jp/emacs/emacs-24.4-mac-5.3.tar.gz | tar x

# patch
###################################################
cd emacs-24.4
patch -p 0 < ../emacs-24.4-mac-5.3/patch-mac
cp -R ../emacs-24.4-mac-5.3/mac mac
cp ../emacs-24.4-mac-5.3/src/* src
cp ../emacs-24.4-mac-5.3/lisp/term/mac-win.el lisp/term
cp nextstep/Cocoa/Emacs.base/Contents/Resources/Emacs.icns mac/Emacs.app/Contents/Resources/Emacs.icns

# make
###################################################
./configure --prefix=$HOME/bin/emacs-24.4 --without-x && make && make GZIP_PROG='' install && ln -s emacs-24.4/bin/emacs $BIN_HOME

# finally
###################################################
cd $CURRENT_DIR