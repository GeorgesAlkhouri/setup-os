#!/bin/bash
set -e
set -x

if ! [ -x "$(command -v xcode-select)" ]; then
  sudo xcode-select --install  
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" ;;
