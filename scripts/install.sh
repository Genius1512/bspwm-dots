#!/bin/bash

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
source /home/silva/.cargo/env

# Install LunarVim
wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb
sudo apt install -y ./nvim-linux64.deb
wget https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh
mv install.sh install_lvim.sh
sed -i "s/command -v cargo/command -v \/home\/silva\/.cargo\/bin\/cargo/" install_lvim.sh
sed -i "s/cargo install/\/home\/silva\/.cargo\/bin/cargo install/"
chmod +x install_lvim.sh
sudo ./install_lvim.sh -y

sudo chmod +rwx /home/silva/.local

echo "export PATH=$PATH:/home/silva/.local/bin" >> /home/silva/.bashrc

source /home/silva/.bashrc

