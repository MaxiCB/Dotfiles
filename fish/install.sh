#!/bin/sh
#
# Fish Shell

if test ! $(which fish)
then
  echo "  Installing fish."
  if test "$(uname)" = "Darwin"
  then
    brew install fish
  else
    sudo apt-add-repository ppa:fish-shell/release-3
    sudo apt-get update && sudo apt-get upgrade
    sudo apt-get install fish -y
  fi
  echo /usr/local/bin/fish | sudo tee -a /etc/shells
  sudo chsh -s /usr/local/bin/fish
else
  echo "  Fish already installed. Skipping."
fi

exit 0
