#!/bin/bash

# Install LunarVim
wget https://raw.githubusercontent.com/LunarVim/LunarVim/rolling/utils/installer/install.sh -O install_lvim.sh
chmod +x install_lvim.sh
sudo ./install_lvim.sh -y
./install_lvim.sh -y
echo "export PATH='$PATH:~/.local/bin'" >> ~/.bashrc

source ~/.bashrc

