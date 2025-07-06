#!/bin/bash

mkdir -p ~/Projects >/dev/null 2>&1
mkdir -p ~/Projects/Active\ projects  >/dev/null 2>&1
mkdir -p ~/Projects/Deprecated\ projects >/dev/null 2>&1
mkdir -p ~/Projects/Scripts >/dev/null 2>&1
mkdir -p ~/Projects/Standards >/dev/null 2>&1

if [[ -e ~/Project ]]; then
  mv ~/Project/Active/* ~/Projects/Active\ projects >/dev/null 2>&1
  mv ~/Project/Inactive/* ~/Projects/Deprecated\ projects >/dev/null 2>&1
  rm -rfv ~/Project >/dev/null 2>&1
fi