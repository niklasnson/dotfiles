#!/bin/sh
set -e

echo "Installing packages"
echo "==================="

sudo apt install make -y
sudo apt install curl -y
sudo apt install imagemagick -y
sudo apt install nodejs -y
sudo apt install htop -y
sudo apt install npm -y
sudo apt install libpq-dev -y
sudo apt install redis -y
sudo apt install postgresql postgresql-contrib -y
sudo apt install rbenv -y
sudo apt install vim-gtk3 -y


echo "Post install tasks"
echo "=================="
sudo -u postgres createuser -s $(whoami)
sudo apt-get remove apache2
