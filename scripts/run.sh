#!/bin/bash

wget https://raw.githubusercontent.com/Genius1512/dotfiles/main/scripts/preinstall.sh
source preinstall.sh

wget https://raw.githubusercontent.com/Genius1512/dotfiles/main/scripts/install.sh
source install.sh

wget https://raw.githubusercontent.com/Genius1512/dotfiles/main/scripts/postinstall.sh
source postinstall.sh

rm preinstall.sh
rm install.sh
rm postinstall.sh
