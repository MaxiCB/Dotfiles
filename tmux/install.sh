#!/bin/sh
#
#Tmux

if test ! $(which tmux)
then
  echo "  Installing Tmux."
  if test "$(uname)" = "Darwin"
  then
    brew install tmux
  else
    apt install tmux
  fi
else
  echo "  Tmux already installed. Skipping."
fi

exit 0
