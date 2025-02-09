#!/bin/bash
sudo pacman -S ttf-ubuntu-font-family ttf-iosevka-nerd alacritty picom

mkdir -p ~/.config/
mv ./config/* ~/.config/

mv ./themes

