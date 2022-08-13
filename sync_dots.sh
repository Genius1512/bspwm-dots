SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

rsync -avu --delete $HOME/.config/bspwm/*   $SCRIPT_DIR/config/bspwm
rsync -avu --delete $HOME/.config/kitty/*   $SCRIPT_DIR/config/kitty
rsync -avu --delete $HOME/.config/lvim/*    $SCRIPT_DIR/config/lvim
rsync -avu --delete $HOME/.config/picom/*   $SCRIPT_DIR/config/picom
rsync -avu --delete $HOME/.config/polybar/* $SCRIPT_DIR/config/polybar
rsync -avu --delete $HOME/.config/rofi/*    $SCRIPT_DIR/config/rofi
rsync -avu --delete $HOME/.config/sxhkd/    $SCRIPT_DIR/config/sxhkd

cp $HOME/.bashrc $SCRIPT_DIR/bin/.bashrc
cp $HOME/.profile $SCRIPT_DIR/bin/.profile
cp $HOME/.bash_profile $SCRIPT_DIR/bin/.bash_profile

echo "Done."
