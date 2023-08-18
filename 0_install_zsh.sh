#!/bin/bash

set -eu -o pipefail # fail on error and report it, debug all lines

sudo -n true

echo
echo APT update
echo ==========
echo

sudo apt update

echo
echo Installing zsh
echo ==============
echo

sudo apt install zsh -y
zsh
chsh -s $(which zsh)

echo
echo zsh is installed. please log out and in.
echo
