#!/bin/bash

sudo pacman -Syu --needed - <pkglist.txt
paru -Syu --needed - <AURpkgs.txt
