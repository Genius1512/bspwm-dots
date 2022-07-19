#!/bin/bash

# Install LunarVim
wget https://raw.githubusercontent.com/Genius1512/dotfiles/main/LunarVim/install.sh -O install_lvim.sh
chmod +x install_lvim.sh
sudo ./install_lvim.sh -y
./install_lvim.sh -y
echo "export PATH='$PATH:~/.local/bin'" >> ~/.bashrc

source ~/.bashrc

