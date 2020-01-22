#!/bin/sh
cd "$(dirname "$0")"
echo This is the script
echo $PWD
make -f Makefile || exit
:
