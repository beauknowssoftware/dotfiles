#!/usr/bin/env bash

cd ..
rm -rf dotfiles
ln -s ~/.ssh/beauknowssoftware_rsa ~/.ssh/id_rsa
git clone git@github.com:beauknowssoftware/dotfiles.git
cd dotfiles
