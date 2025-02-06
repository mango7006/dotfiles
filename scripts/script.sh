#!/bin/bash

source secret.sh

repo_config=/home/mango/gits/dotfiles/config/
repo_home=/home/mango/gits/dotfiles/home/
repo_scripts=/home/mango/gits/dotfiles/scripts

echo "Updating github repo for Dotfiles"

sudo cp /home/mango/.zshrc $repo_home
sudo cp /home/mango/.wezterm.lua $repo_home

sudo cp /home/mango/.config/starship.toml $repo_config
sudo cp -r /home/mango/.config/dunst/ $repo_config
sudo cp -r /home/mango/.config/fastfetch/ $repo_config
sudo cp -r /home/mango/.config/hypr/ $repo_config
sudo cp -r /home/mango/.config/nvim/ $repo_config
sudo cp -r /home/mango/.config/waybar/ $repo_config
sudo cp -r /home/mango/.config/wofi/ $repo_config

sudo cp /home/mango/script.sh $repo_scripts

read -r -p "Do you want to push to github? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
  echo "Pushing to github"
  cd /home/mango/gits/dotfiles/
  git add .
  git commit -m "Script Upload"
  git push $gittoken@github.com/mango7006/dotfiles.git
else
  echo "Not pushing changes to github"
fi

echo "Script ended"
