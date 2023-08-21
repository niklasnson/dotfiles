#!/bin/bash

set -eu -o pipefail # fail on error and report it, debug all lines

sudo -n true

echo
echo Installing packages
echo ===================
echo

while read -r p ; do sudo apt install -y $p ; done < <(cat << "EOF"
  make
  curl
  imagemagick
  nodejs
  htop
  npm
  redis
  postgresql postgresql-contrib
  libpq-dev
  rbenv
  vim-gtk3
  transmission
  fonts-firacode
  silversearcher-ag
EOF
)

echo
echo Installations wih corepack
echo ==========================
echo

sudo npm install -g corepack
corepack enable
corepack prepare yarn@stable --activate

echo
echo Post install tasks
echo ==================
echo

sudo -u postgres createuser -s $(whoami)
sudo apt autoremove



echo
echo Please reboot and then run "make"
echo =================================
echo
