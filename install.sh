#!/bin/env bash

echo "This script requires that the SSH key for this user is added to your GitHub account, please make sure it is added before proceeding"
read -s -p "Press enter to continue..."

if [[ -f "$HOME/.config/nvim/lua/user/install.sh" ]]; then
  echo "This user config already exists, no need to install"
  exit 1
fi

if [[ -d "$HOME/.config/nvim" ]]; then
  echo "A Neovim config exists already, backing up"
  mv "$HOME/.config/nvim" "$HOME/.config/nvim.old-backup"
fi

set -xe

git clone https://github.com/AstroNvim/AstroNvim $HOME/.config/nvim
git clone git@github.com:STBoyden/astronvim-config $HOME/.config/nvim/lua/user
