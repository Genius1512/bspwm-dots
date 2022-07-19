#!/bin/bash

cd /tmp

# Utils
sudo apt install wget

# Install the rust toolchain
wget sh.rustup.rs
mv index.html install_rust.sh
chmod +x install_rust.sh
./install_rust.sh -y --default-toolchain stable

