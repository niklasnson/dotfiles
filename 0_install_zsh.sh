#!/bin/sh
set -e

echo "Installing zsh"
echo "==================="

sudo apt update
sudo apt install zsh -y
zsh
chsh -s $(which zsh)
