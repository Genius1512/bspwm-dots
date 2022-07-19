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
sudo apt install -y neovim

sudo apt install lxqt sddm -y
sudo apt-get install lxqt openbox -y

# Snaps
sudo apt install -y snapd

snap install firefox

# Install rust
wget https://sh.rustup.rs
mv index.html install_rust.sh
chmod +x install_rust.sh
./install_rust.sh -y

# Reboot
sudo reboot
