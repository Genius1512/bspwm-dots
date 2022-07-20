#!/bin/bash

# Utils
sudo apt install wget
sudo apt install git

# Install neovim
wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb

# Install npm
sudo apt install -y npm

# Install python
sudo apt install -y pip

# Install the rust toolchain
wget sh.rustup.rs
mv index.html install_rust.sh
chmod +x install_rust.sh
./install_rust.sh -y --default-toolchain stable
source ~/.cargo/env

source ~/.bashrc

