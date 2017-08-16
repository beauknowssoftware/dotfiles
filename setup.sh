#!/usr/bin/env bash

declare -a FILES_TO_SYMLINK=(
    'vimrc'
    'gitconfig'
    'gitignore'
    'inputrc'
)

for i in ${FILES_TO_SYMLINK[@]}; do
    sourceFile="$(pwd)/$i"
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
    sourceFile="$(pwd)/$i"
    targetFile="$HOME/.$i"
    localTargetFile="$HOME/.local_$i"

    if [ ! -e "$targetFile" ]; then
        ln -fs "$sourceFile" "$targetFile"
    elif [ "$(readlink "$targetFile")" != "$sourceFile" ]; then
        mv "$targetFile" "$localTargetFile"
        ln -fs "$sourceFile" "$targetFile"
    fi

done

source ~/.bash_profile
