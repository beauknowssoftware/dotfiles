#!/usr/bin/env bash

# TODO: Need to install Office software

./brew.sh
./install/shiftit.sh
./install/github-ssh.sh
./install/webstorm.sh

./setup.sh

open /Applications/1Password\ 6.app/
open -a /Applications/Google\ Chrome.app/ https://github.com/settings/keys
open /Applications/ShiftIt.app/
open /Applications/Flux.app/
