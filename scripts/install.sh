#!/bin/bash

# Install LunarVim
wget https://raw.githubusercontent.com/Genius1512/dotfiles/main/LunarVim/install.sh -O install_lvim.sh
chmod +x install_lvim.sh
sudo ./install_lvim.sh -y
./install_lvim.sh -y
echo "export PATH='$PATH:~/.local/bin'" >> ~/.bashrc

# Get LunarVim config
wget https://raw.githubusercontent.com/Genius1512/dotfiles/main/LunarVim/config/config.lua -O ~/.config/lvim/config.lua
wget https://raw.githubusercontent.com/Genius1512/dotfiles/main/LunarVim/config/plugins.lua -O ~/.local/share/lunarvim/lvim/lua/lvim/plugins.lua
https://raw.githubusercontent.com/Genius1512/dotfiles/main/LunarVim/config/keymappings.lua -O ~/local/share/lunarvim/lvim/lua/lvim/keymappings.lua

source ~/.bashrc

