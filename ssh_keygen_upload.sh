#!/bin/bash

local _USER=$1
local _IP=$2

mkdir -p $HOME/.ssh
local _PUB_F=$HOME/.ssh/id_rsa.pub
if [ ! -f $_PUB_F ]; then
    ssh-keygen
fi
if [ -f $_PUB_F ]; then
    cat $_PUB_F | ssh $_USER@$_IP "cat >> ~/.ssh/authorized_keys"
else
    echo "Not foud $_PUB_F"
fi
