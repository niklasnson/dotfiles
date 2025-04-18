#!/bin/bash
set -eu -o pipefail # fail on error and report it, debug all lines

# helper functions
function _echo() { echo -e "\n╓───── $1 \n╙────────────────────────────────────── ─ ─ \n" ""; }

# update all the things \o/
_echo "updating packages"
apt update -y && apt upgrade -y

_echo "remove old packages"
while read -r p ; do sudo apt remove -y $p ; done < <(cat << "EOF"
  silversearcher-ag
EOF
)