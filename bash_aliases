alias ..="cd .."
alias cd..="cd .."

alias where=which # sometimes i forget

# Always use color output for `ls`
# Detect which `ls` flavor is in use
if gls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

export CLICOLOR_FORCE=1

# ls options: F = put `/` after folders, h = byte unit suffixes
alias ls='ls -Fh ${colorflag}'

# List all files colorized in long format, including dot files
alias la="ls -lhA ${colorflag}"
alias ll='la'

# File size
alias fs="stat -f \"%z bytes\""

alias reload="source ~/.bash_profile  && echo 'Shell config reloaded from ~/.bash_profile'"

alias cls='clear'

alias path='echo -e ${PATH//:/\\n}'

alias now='date +"%T"'

if [ -f ~/.local_bash_aliases ]; then
  . ~/.local_bash_aliases
fi
