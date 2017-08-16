#!/usr/bin/env bash

function md() {
  mkdir -p "$@" && cd "$@"
}

function cd() {
    command cd "$@"
    ll
}

function mans() {
    man "$1" | grep -iC2 --color=always -e "$2" | less
}

if [ -f ~/.bash_functions.local ]; then
    source ~/.bash_functions.local
fi
