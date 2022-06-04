#!/bin/bash

# Based on https://github.com/ronuchit/pddlgym_planners/blob/master/ff.py

install_mac() {
  git clone "https://github.com/ronuchit/FF.git"
  mkdir bin
  cd FF
  make
  mv ff ../bin
  cd -
  rm -rf FF
}

FF_URL_DIR="https://fai.cs.uni-saarland.de/hoffmann/ff"
FF_URL_FILE="FF-v2.3"
FF_EXTENSION=".tgz"

install_linux() {
  wget "${FF_URL_DIR}/${FF_URL_FILE}${FF_EXTENSION}"
  tar -xzf "${FF_URL_FILE}${FF_EXTENSION}"
  mkdir bin
  cd "${FF_URL_FILE}"
  make
  mv ff ../bin
  cd -
  rm -rf "${FF_URL_FILE}" "${FF_URL_FILE}${FF_EXTENSION}"
}

echo installing in $PWD

case $OSTYPE in
darwin*)
  echo Installing in Mac
  install_mac
  ;;
linux*)
  echo Installing in Linux
  install_linux
  ;;
esac
