#!/bin/sh
#
# Nvim

if test ! $(which nvim)
then
  echo "  Installing Nvim."
  if test "$(uname)" = "Darwin"
  then
    brew install neovim
  else
    sudo apt-get install neovim
  fi
else
  echo "  Nvim already installed. Skipping."
fi

exit 0
