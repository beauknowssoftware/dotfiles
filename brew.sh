#!/usr/bin/env bash

brew install nvm awscli terraform coreutils moreutils findutils grep openssh tree bash bash-completion2 z hub
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;
brew install gnu-sed --with-default-names
brew install yarn --without-node
brew install vim --with-override-system-vi
brew install homebrew/dupes/nano
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew cask install flux 1password dropbox slack google-chrome
