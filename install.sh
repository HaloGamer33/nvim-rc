#!/usr/bin/env bash
set -e

sudo pacman -Syu --noconfirm
sudo pacman -S --needed git neovim make yarn cmake gcc --noconfirm

sudo localectl set-locale LANG=en_US.UTF-8

source ~/.profile

rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim

git clone https://github.com/HaloGamer33/nvim-rc ~/.config/nvim

nvim
