#!/bin/bash

# https://github.com/nvm-sh/nvm#installing-and-updating
NVM_VERSION="v0.37.2"

if ! command -v nvm &> /dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash
    source "$HOME/.zshrc"
fi

nvm install stable
