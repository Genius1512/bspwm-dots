#!/bin/bash

# Utils
sudo apt install wget

# Install npm
sudo apt install -y npm

# Install python
sudo apt install -y pip

# Install the rust toolchain
wget sh.rustup.rs
mv index.html install_rust.sh
chmod +x install_rust.sh
./install_rust.sh -y --default-toolchain stable

# Cleanup
rm install_rust.sh

source ~/.bashrc

