if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
  source ~/.bash_functions
fi

if [ -f ~/.local_bash_profile ]; then
  source ~/.local_bash_profile
fi
