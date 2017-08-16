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

if [ -f ~/.local_bash_functions ]; then
    source ~/.local_bash_functions
fi
