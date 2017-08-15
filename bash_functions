#!/usr/bin/env bash

function md() {
  mkdir -p "$@" && cd "$@"
}

if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi
