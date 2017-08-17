#!/usr/bin/env bash

function md() {
  mkdir -p "$@" && cd "$@"
}

function cd() {
    command cd "$@"
    ll
}

function awsCreds() {
    function _awsCredsSet() {
        export AWS_PROFILE="$1"
    }

    function _awsCredsDetails() {
        aws configure list
    }

    function _awsCredsCurrent() {
        echo "$AWS_PROFILE"
    }

    function _awsCredsList() {
        less ~/.aws/credentials | grep -E "\[.*\]" | sed s/"\[\(.*\)\]"/\\1/g
    }

    function _awsCredsPick() {
        profiles=($(_awsCredsList))
        select profile in "${profiles[@]}"; do
            _awsCredsSet "$profile"
            break
        done
    }

    case "$1" in
        s|set)
            _awsCredsSet "$2"
            ;;
        l|list)
            _awsCredsList 
            ;;
        c|current)
            _awsCredsCurrent
            ;;
        d|details)
            _awsCredsDetails
            ;;
        p|pick)
            _awsCredsPick
            ;;
        *)
            echo $"Usage: awsCreds {set|list|current|details|pick}"
            return 1
            ;;
    esac
}

if [ -f ~/.bash_functions.local ]; then
    source ~/.bash_functions.local
fi
