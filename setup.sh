#!/bin/bash
set -e
set -x 
case "$OSTYPE" in
  darwin*)   
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/GeorgesAlkhouri/setup-os/HEAD/setup_mac.sh)" ;;
  linux*)   echo "LINUX" 
            exit 1
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" ;;
  *)        echo "$OSTYPE not supported" ;;
esac

# OS 

brew install  -q pyenv \
                neovim \
                git \
                git-flow \
                tldr \
                tmux \
                zsh \
exit_on_error $? !! 
           
## brew post install
eval "$(command pyenv init -)"


# Python Development

PY_VER=3.8.6

$ git clone https://github.com/pyenv/pyenv-virtualenv.git "$(pyenv root)"/plugins/pyenv-virtualenv
eval "$(command pyenv virtualenv-init -)"

pyenv virtuelenv "$PY_VER" pytools 
pyenv activate pytools
pip install black
pyenv deactivate

pyenv virtuelenv "$PY_VER" pynvim

# TODO add OS dependent stuff
