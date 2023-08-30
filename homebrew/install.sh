#!/bin/sh
#
# Homebrew

if test ! $(which brew)
then
  echo "  Installing Homebrew."
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
else
  echo "  Homebrew already installed. Skipping."
fi

exit 0
