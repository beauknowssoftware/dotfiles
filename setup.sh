#!/usr/bin/env bash

declare -a FILES_TO_SYMLINK=(
    'vimrc'
    'gitconfig'
    'gitignore'
    'bash_profile'
    'bash_aliases'
    'bashrc'
)

for i in ${FILES_TO_SYMLINK[@]}; do
    sourceFile="$(pwd)/$i"
    targetFile="$HOME/.$i"
    localTargetFile="$HOME/.local_$i"

    if [ ! -e "$targetFile" ]; then
        ln -fs "$sourceFile" "$targetFile"
    elif [ "$(readlink "$targetFile")" != "$sourceFile" ]; then
        mv "$targetFile" "$localTargetFile"
    fi

done

source ~/.bash_profile
