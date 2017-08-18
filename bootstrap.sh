#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git

git clone https://github.com/beauknowssoftware/dotfiles.git

cd dotfiles

./setup-new.sh
