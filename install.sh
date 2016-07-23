#!/bin/bash

source include.sh

# excute

cd $_BASEDIR

echo_stamp "Install brew."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

eval_echo_stamp brew update

eval_echo_stamp brew tap homebrew/dupes

eval_echo_stamp brew install --force --with-full-icu ${_BREW[@]}

brew cask install --force --with-full-icu ${_BREW_CASK[@]}

eval_echo_stamp brew upgrade

brew ln gnu-getopt --force

eval_echo_stamp pip install --upgrade --no-deps --ignore-installed --force-reinstall ${_PIP[@]}

_P=`pwd`
_DIR=global-pygments-plugin
if [ -d "$_DIR" ]; then
    eval_echo_stamp rm -rf $_DIR
fi
git clone https://github.com/yoshizow/$_DIR.git $_DIR
cd $_DIR
sh reconf.sh
./configure --with-exuberant-ctags=/usr/local/bin/ctags
make && make install
cp sample.globalrc $HOME/.globalrc
cd $_P
rm -rf $_DIR
rm ltmain.sh

eval_echo_stamp pip3 install --upgrade --no-deps --ignore-installed --force-reinstall ${_PIP3[@]}

eval_echo_stamp npm install --global ${_NPM[@]}
eval_echo_stamp npm update --global ${_NPM[@]}

echo_stamp "Install oh my zsh."
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
check_exit_code
if [ $_IS_ZSH == false ]
then
    eval_echo_stamp chsh -s /bin/zsh
fi

echo_stamp "Install sound io from https://github.com/kyleneideck/BackgroundMusic."
(set -eo pipefail; URL='https://github.com/kyleneideck/BackgroundMusic/archive/master.tar.gz'; \
 cd $(mktemp -d); echo Downloading $URL to $(pwd); curl -qfL# $URL | gzcat - | tar x && \
    /bin/bash BackgroundMusic-master/build_and_install.sh && rm -rf BackgroundMusic-master)

_DIR=$HOME/.tmux/plugins/tpm
if [ -d "$_DIR" ]; then
    eval_echo_stamp rm -rf $_DIR
fi
eval_echo_stamp git clone https://github.com/tmux-plugins/tpm $_DIR

sh copy.sh

echo_stamp ${_C_CYON}"Completed install."${_C_RESET}

exit 0
