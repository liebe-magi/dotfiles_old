#!/bin/sh

REPO_URL="https://github.com/reeve0930/dotfiles.git"
DOTFILES_LOGO='
 ________  ________  _________  ________ ___  ___       _______   ________
|\   ___ \|\   __  \|\___   ___\\  _____\\  \|\  \     |\  ___ \ |\   ____\
\ \  \_|\ \ \  \|\  \|___ \  \_\ \  \__/\ \  \ \  \    \ \   __/|\ \  \___|
 \ \  \ \\ \ \  \\\  \   \ \  \ \ \   __\\ \  \ \  \    \ \  \_|/_\ \_____  \
  \ \  \_\\ \ \  \\\  \   \ \  \ \ \  \_| \ \  \ \  \____\ \  \_|\ \|____|\  \
   \ \_______\ \_______\   \ \__\ \ \__\   \ \__\ \_______\ \_______\____\_\  \
    \|_______|\|_______|    \|__|  \|__|    \|__|\|_______|\|_______|\_________\
                                                                    \|_________|
 '


# check git
if ! type git > /dev/null 2>&1; then
  echo "this dotfiles is required git"
  echo "please retry when you install git"
  exit 1
fi

# echo logo

echo "$DOTFILES_LOGO"

# git clone
git clone ${REPO_URL} ~/.dotfiles

cd ~/.dotfiles
make install
