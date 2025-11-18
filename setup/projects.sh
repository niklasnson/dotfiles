#!/bin/bash

# helper functions
function _echo() { echo -e "\n╓───── $1 \n╙────────────────────────────────────── ─ ─ \n" ""; }

_echo "Creating the folder structure"
mkdir -p ~/Projects >/dev/null 2>&1
mkdir -p ~/Projects/Active  >/dev/null 2>&1
mkdir -p ~/Projects/Deprecated >/dev/null 2>&1
mkdir -p ~/Projects/Shared >/dev/null 2>&1
mkdir -p ~/Projects/Scripts >/dev/null 2>&1
mkdir -p ~/Projects/Standards >/dev/null 2>&1

