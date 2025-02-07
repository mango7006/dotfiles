#!/bin/bash

source ~/secret.sh

repo_config=~/gits/dotfiles/config/
repo_home=~/gits/dotfiles/home/
repo_scripts=~/gits/dotfiles/scripts

echo "Updating github repo for Dotfiles"

sudo cp ~/.zshrc $repo_home
sudo cp ~/.wezterm.lua $repo_home

sudo cp ~/.config/starship.toml $repo_config
sudo cp -r ~/.config/dunst/ $repo_config
sudo cp -r ~/.config/fastfetch/ $repo_config
sudo cp -r ~/.config/hypr/ $repo_config
sudo cp -r ~/.config/nvim/ $repo_config
sudo cp -r ~/.config/waybar/ $repo_config
sudo cp -r ~/.config/wofi/ $repo_config

sudo cp ~/script.sh $repo_scripts

read -r -p "Do you want to push to github? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
  echo "Pushing to github"
  cd ~/gits/dotfiles/
  git add .
  git commit -m "Script Upload"
  git push $gittoken@github.com/mango7006/dotfiles.git
else
  echo "Not pushing changes to github"
fi

echo "Script ended"
