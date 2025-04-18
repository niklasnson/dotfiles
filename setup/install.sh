#!/bin/bash

# user vars

# script vars

# helper functions
function _echo() { echo -e "\n╓───── $1 \n╙────────────────────────────────────── ─ ─ \n" ""; }

[ "$(id -u)" -ne 0 ] && {
	_echo "got root?" >&2
	exit 1
}

# install all the things \o/
_echo "Updating packages"
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
  postgresql postgresql-contrib
  rbenv
  redis
  rsyslog
  secure-delete
  silversearcher-ag
  socat
  stow
  tar
  tcpdump
  toilet
  traceroute
  transmission
  tree
  tzdata
  vim-gtk3
  whiptail
  xz-utils
  zsh-syntax-highlighting
EOF
)

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