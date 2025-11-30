#!/bin/bash

# helper functions
function _echo() { echo -e "\n╓───── $1 \n╙────────────────────────────────────── ─ ─ \n" ""; }

# optional install function
function _ask() {
  read -p "Do you want to install '$1'? [y/n] " yn

  case $yn in
    [yY] )
      sudo apt install -y $1;;
    [nN] )
      echo " Skipping '$1'";;
    * )
      echo "Invalid response";;
  esac
}


[ "$(id -u)" -ne 0 ] && {
	_echo "got root?" >&2
	exit 1
}

# install all the things \o/
_echo "updating packages"
sudo add-apt-repository ppa:solaar-unifying/stable -y
apt update -y && apt upgrade -y

_echo "Installing packages"
while read -r p ; do sudo apt install -y $p ; done < <(cat << "EOF"
  cmake
  curl
  fonts-firacode
  htop
  imagemagick
  libpq-dev
  make
  nodejs
  npm
  rbenv
  rsyslog
  secure-delete
  silversearcher-ag
  socat
  stow
  tar
  tcpdump
  tmux
  tree
  tzdata
  vim-gtk3
  xz-utils
  zsh-syntax-highlighting
  xnview
  xsel
EOF
)

_echo "Installting optional packages"
_ask postgresql
_ask postgresql-contrib
_ask solaar
_ask redis

_echo "Installing corepack packages"
npm install -g corepack
corepack enable
corepack prepare yarn@stable --activate

cd ./

_echo "post installation tasks"
sudo -u postgres createuser -s $(whoami)
apt autoremove -y

_echo "Installing Zsh"
apt install zsh -y
zsh
chsh -s $(which zsh)

_echo "Zsh is installed. please log out and in."
