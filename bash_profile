if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
  source ~/.bash_functions
fi

if [ -f ~/.bash_profile.local ]; then
  source ~/.bash_profile.local
fi
