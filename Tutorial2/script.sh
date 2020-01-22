#!/bin/sh
cd "$(dirname "$0")"
echo This is the script
echo $PWD
ll
make -f Makefile || exit
:
