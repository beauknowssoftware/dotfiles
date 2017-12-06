#!/usr/bin/env bash

./brew.sh

declare -a FILES_TO_SYMLINK=(
    'vimrc'
    'gitconfig'
    'gitignore'
    'inputrc'
    'ssh/config'
)

for i in ${FILES_TO_SYMLINK[@]}; do
    sourceFile="$(pwd)/config/$i"
    targetFile="$HOME/.$i"

    if [ ! -e "$targetFile" ]; then
        ln -fs "$sourceFile" "$targetFile"
    elif [ "$(readlink "$targetFile")" != "$sourceFile" ]; then
        echo "$i already exists"
    fi

done

declare -a FILES_TO_SYMLINK_LOCAL=(
    'bash_profile'
    'bash_aliases'
    'bash_functions'
    'bashrc'
)

for i in ${FILES_TO_SYMLINK_LOCAL[@]}; do
    sourceFile="$(pwd)/config/$i"
    targetFile="$HOME/.$i"
    localTargetFile="$HOME/.local_$i"

    if [ ! -e "$targetFile" ]; then
        ln -fs "$sourceFile" "$targetFile"
    elif [ "$(readlink "$targetFile")" != "$sourceFile" ]; then
        mv "$targetFile" "$localTargetFile"
        ln -fs "$sourceFile" "$targetFile"
    fi

done

source $(brew --prefix nvm)/nvm.sh
nvm install --lts
nvm install node

source ~/.bash_profile
