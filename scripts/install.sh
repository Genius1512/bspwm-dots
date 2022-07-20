#!/bin/bash

# Install LunarVim
wget https://raw.githubusercontent.com/Genius1512/dotfiles/main/install_lvim.sh -O install_lvim.sh
chmod +x install_lvim.sh
./install_lvim.sh -y
echo "export PATH='$PATH:~/.local/bin'" >> ~/.bashrc

# Get LunarVim config
rm -rf ~/.local/share/lunarvim/lvim
git clone https://github.com/Genius1512/lvim-config ~/.local/share/lunarvim/
mv ~/.local/share/lunarvim/lvim-config ~/.local/share/lunarvim/lvim
cp ~/.local/share/lunarvim/lvim/config.lua ~/.config/lvim/config.lua


source ~/.bashrc

