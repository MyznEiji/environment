if [ -f ~/.bash_profile ]; then
        source ~/.bash_profile
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


if [ -z $TMUX ]; then
  if $(tmux has-session 2> /dev/null); then
    tmux -2 attach
  else
    tmux_cus
  fi
else
  echo ' *** you already in tmux *** '
fi


