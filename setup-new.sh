#!/usr/bin/env bash

brew install nvm
brew install nvm
brew install awscli
brew install git
brew install terraform

hdiutil attach https://download.jetbrains.com/webstorm/WebStorm-2017.2.2.dmg
cp /Volumes/WebStorm/Webstorm.app /Applications
hidutil detach /Volumes/WebStorm


curl -L https://github.com/fikovnik/ShiftIt/releases/download/version-1.6.3/ShiftIt-1.6.3.zip > shiftit.zip && unzip shiftit.zip
mv ShiftIt.app /Applications
rm shiftit.zip

./setup.sh
