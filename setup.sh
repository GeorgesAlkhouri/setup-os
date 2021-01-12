#!/bin/bash

case "$OSTYPE" in
  darwin*)  sudo xcode-select --install 
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" ;;
  linux*)   echo "LINUX" ;;
  *)        echo "$OSTYPE not supported" ;;
esac


# Python Development

PY_VER = 3.8.6

pyenv virtuelenv $PY_VER pytools 
pyenv activate pytools
pip install black
pyenv deactivate pytools
