wget https://github.com/Genius1512/dotfiles/blob/main/scripts/preinstall.sh
source preinstall.sh

wget https://github.com/Genius1512/dotfiles/blob/main/scripts/install.sh
source install.sh

wget https://github.com/Genius1512/dotfiles/blob/main/scripts/postinstall.sh
source postinstall.sh

rm preinstall.sh
rm install.sh
rm postinstall.sh
