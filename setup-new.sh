#!/usr/bin/env bash

brew install nvm awscli terraform
brew cask install flux 1password dropbox slack google-chrome

# TODO: Doesn't quite work yet
#hdiutil attach https://download.jetbrains.com/webstorm/WebStorm-2017.2.2.dmg
#cp /Volumes/WebStorm/Webstorm.app /Applications
#hidutil detach /Volumes/WebStorm

# TODO: Need to install Office software

curl -L https://github.com/fikovnik/ShiftIt/releases/download/version-1.6.3/ShiftIt-1.6.3.zip > shiftit.zip && unzip shiftit.zip
mv ShiftIt.app /Applications
rm shiftit.zip

./install/github-ssh.sh

./setup.sh
