#!/usr/bin/env bash

# Get brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Get git
brew install git

# Get dotfiles
git clone https://github.com/beauknowssoftware/dotfiles.git
cd dotfiles

# Setup dotfiles
./setup-new.sh

brew cleanup
