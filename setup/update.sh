#!/bin/bash

# helper functions
function _echo() { echo -e "\n╓───── $1 \n╙────────────────────────────────────── ─ ─ \n" ""; }

[ "$(id -u)" -ne 0 ] && {
	_echo "got root?" >&2
	exit 1
}

# update all the things \o/
_echo "Updating packages"
apt update -y && apt upgrade -y

_echo "Remove unused packages"
while read -r p ; do sudo apt remove -y $p ; done < <(cat << "EOF"
EOF
)

_echo "Post update tasks"
sudo apt autoremove -y