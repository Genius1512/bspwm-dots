#!/bin/bash

# Check if is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Move to tmp
cd /tmp

# Install utils
sudo apt install -y curl
sudo apt install -y wget
sudo apt install -y git
sudo apt install -y npm
sudo apt install -y pip

# Install rust
wget https://sh.rustup.rs
mv index.html install_rust.sh
chmod +x install_rust.sh
./install_rust.sh -y

# Install LunarVim
wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb
sudo apt install -y ./nvim-linux64.deb
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) -y

# Reboot
sudo reboot
