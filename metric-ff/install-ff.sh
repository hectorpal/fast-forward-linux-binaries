#!/bin/bash

# Based on https://github.com/ronuchit/pddlgym_planners/blob/master/ff.py

FF_URL_DIR="https://fai.cs.uni-saarland.de/hoffmann/ff"
FF_URL_FILE="Metric-FF-v2.1"
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
linux*)
  echo Installing in Linux
  install_linux
  ;;
esac
