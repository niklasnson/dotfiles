#!/bin/bash
set -eu -o pipefail # fail on error and report it, debug all lines

# user vars

# script vars

# helper functions
function _echo() { echo -e "\n╓───── $1 \n╙────────────────────────────────────── ─ ─ \n" ""; }

# install all the things \o/
_echo "updating packages"
apt update -y && apt upgrade -y

_echo "installing packages"
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
  silversearcher-ag
  transmission
  vim-gtk3
  tar
EOF
)