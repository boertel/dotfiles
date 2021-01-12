#!/bin/bash

brew update
brew install pyenv
brew install pipenv
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

# or source ~/.zshrc ?
source "$HOME/.zshrc"

pyenv install 3.8.5
