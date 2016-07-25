#!/bin/bash

_P=`pwd`
cd $(dirname $0)

source include.sh

eval_echo_stamp cp -avr ${_HOME[@]} $HOME
eval_echo_stamp cp ssh_keygen_upload.sh $HOME/.ssh

eval_echo_stamp sh install_muz.sh

cd $_P
