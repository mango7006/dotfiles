#!/bin/bash

gitDir=/home/mango/gits/dotfiles/config
conf=~/.config/

echo "Install script for dotfiles"

read -r -p "Do you want to make a backup of your current dotfiles? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
  echo "Creating backup of current dotfiles"
  cd ~/.config
  mkdir -p ~/.config/bkup
  sudo zip -r ~/.config/bkup/backup.zip $conf/dunst $conf/fastfetch $conf/hypr $conf/nvim $conf/waybar $conf/wofi $conf/starship.toml ~/.wezterm.lua ~/.zshrc
else
  echo "Not making a backup of current dotfiles"
fi

sudo cp -r $gitDir/dunst/ $conf
sudo cp -r $gitDir/fastfetch/ $conf
sudo cp -r $gitDir/hypr/ $conf
sudo cp -r $gitDir/nvim/ $conf
sudo cp -r $gitDir/waybar/ $conf
sudo cp -r $gitDir/wofi/ $conf
sudo cp $gitDir/starship.toml $conf
