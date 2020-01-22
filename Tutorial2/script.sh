#!/bin/sh
cd "$(dirname "$0")"
echo This is the script
echo $PWD
ls -al
make -f Makefile || exit
:
