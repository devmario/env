#!/bin/bash

_BREW=(
    ctags
    global
    ag
    gnu-getopt
    gnu-tar
    grep
    quilt
    xz
    gawk
    findutils
    coreutils
    wget
    node
    urlview
    extract_url
    zsh
    zsh-completions
    python
    python3
    emacs
    tmux
    fzf
    ack
    reattach-to-user-namespace
    fpp
    fping
    nmap
    watchman
    ffmpeg
    caskroom/cask/brew-cask
    iterm2
)

_BREW_CASK=(
    anybar
)

_NPM=(
    vorpal
    babel-cli
    nodemon
)

_PIP=(
    pygments
)

_PIP3=(
    gitsome
)

_HOME=(
    .zshrc
    .tmux.conf
    .demacs
    .bin
)

_BASEDIR=$(dirname $0)

_C_CYON=`tput setaf 6`
_C_RESET=`tput sgr0`

_IS_ZSH=false
_=`echo $SHELL | grep 'zsh'`
if [ $? == 0 ]
then
    _IS_ZSH=true
fi

echo_stamp() {
    echo && echo -n ${_C_CYON}
    echo $@
    echo -n ${_C_RESET} && echo
}

check_exit_code() {
    _RETURN=$?
    if [ $_RETURN != 0 ]
    then
        echo_stamp "Error.(code:"$_RETURN")"
        exit $_RETURN
    fi
}

eval_check_exit_code() {
    eval $@
    check_exit_code
}

eval_echo_stamp() {
    echo_stamp $@
    eval_check_exit_code $@
}
