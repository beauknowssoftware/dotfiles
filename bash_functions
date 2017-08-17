#!/usr/bin/env bash

function md() {
  mkdir -p "$@" && cd "$@"
}

function cd() {
    command cd "$@"
    ll
}

function awsCredsSet() {
    local source="$HOME/.aws/$1.credentials"
    local destination="$HOME/.aws/credentials"
    if [ ! -e "$source" ]; then
        echo "There are no $1 credentials"
    else
        rm "$destination"
        ln -s "$source" "$destination"
    fi
}

function awsCredsList() {
    command ls -1 ~/.aws | grep -E "\.credentials" | sed s/\.credentials//
}

function awsCredsCurrent() {
    local file=$(readlink ~/.aws/credentials | sed s/\.credentials//)
    echo $(basename "$file")
}

function awsCredsDetails() {
    cat ~/.aws/credentials | tail -2 
}

function awsCreds() {
    case "$1" in
        set)
            awsCredsSet "$2"
            ;;
        list)
            awsCredsList "$2"
            ;;
        details)
            awsCredsDetails
            ;;
        current)
            awsCredsCurrent
            ;;
        *)
            echo $"Usage: awsCreds {set|list|current|details}"
            return 1
            ;;
    esac
}

if [ -f ~/.bash_functions.local ]; then
    source ~/.bash_functions.local
fi
