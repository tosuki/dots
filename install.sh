#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
    echo "This script requires sudo privilegies"
    exit 1
fi

echo "Installing dependencies"
sudo apt install i3 alacritty polybar
if [[ $? -ne 0 ]]; then
    echo "An error occurred when trying to install the dependencies"
    exit 1
fi

echo "Configuring i3wm"
mkdir -p ~/.config/i3
mv ./i3/* ~/.config/i3/
echo "Configured"

echo "Configuring alacritty"
mkdir -p ~/.config/alacritty
mv ./alacritty/* ~/.config/alacritty/
echo "Configured"

echo "Installing fonts"
sudo mv ./fonts/* /usr/share/fonts/truetype/
fc-cache
if [[$? -eq 0]]; then
    echo "Updated the cache of fonts"
fi

echo "Installed dots"
