#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
    echo "This script requires sudo privilegies"
    exit 1
fi

echo "Installing dependencies"
sudo apt install i3 mate-terminal
if [[ $? -ne 0 ]]; then
    echo "An error occurred when trying to install the dependencies"
    exit 1
fi

echo "Configuring i3wm"
mkdir -p ~/.config/i3
mv ./i3/* ~/.config/i3/
echo "Installed"

echo "Installing fonts"
if [[ -d "/usr/share/fonts/truetype/dejavu" ]]; then
    echo "Dejavu font is already installed in the system"
    exit 1
fi

sudo mv ./fonts/* /usr/share/fonts/truetype/
fc-cache
if [[$? -eq 0]]; then
    echo "Updated the cache of fonts"
fi

echo "Installed dots"