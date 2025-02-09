#!/bin/bash
sudo pacman -S ttf-ubuntu-font-family ttf-iosevka-nerd alacritty picom qutebrowser

mkdir -p ~/.config/
mv ./config/* ~/.config/

mv ./themes

