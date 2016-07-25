#!/bin/bash

_P=`pwd`
git submodule init
git submodule update
cd muz
./install

mkdir -p $HOME/.muz/bin
SRC=$(find . \( -iname '*' ! -iname ".*" \) -type f -maxdepth 1 | grep -v "**/tmp/*" | grep -v "**/node_modules/*" | grep -v "**.md" | grep -v "**/install")
BIN=$(find bin \( -iname '*' ! -iname ".*" \) -type f -maxdepth 1 | grep -v "**/tmp/*" | grep -v "**/node_modules/*" | grep -v "**.md" | grep -v "**/install")
for f in $SRC; do
    cp $f $HOME/.muz
done
for f in $BIN; do
    cp $f $HOME/.muz/bin
done

cd $HOME/.muz
npm install

cd $_P
