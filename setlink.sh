# /usr/bin/bash

# Makes a symbolic link in my bin directory
# to the sbasm program

SBASMPATH=$(dirname $0)
cd "$SBASMPATH"
SBASMPATH=$(pwd)

cd ~/bin

ln -sf "$SBASMPATH/sbasm" sbasm
