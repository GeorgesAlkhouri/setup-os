#!/bin/bash

case "$OSTYPE" in
  darwin*)  sudo xcode-select --install 
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" ;;
  linux*)   echo "LINUX" ;;
  *)        echo "$OSTYPE not supported" ;;
esac
