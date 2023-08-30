#!/bin/sh
#
#Lazydocker

if test ! $(which lazydocker)
then
  echo "  Installing Lazydocker."
  if test "$(uname)" = "Darwin"
  then
    brew install jesseduffield/lazydocker/lazydocker
  else
    curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
  fi
else
  echo "  Lazygit already installed. Skipping."
fi

exit 0
