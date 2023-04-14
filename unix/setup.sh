#!/bin/zsh
if ! command -v i3-resurrect &> /dev/null
then
    echo "i3-resurrect could not be found"
    echo "please run yay -S i3-resurrect before proceeding"
    exit
fi

echo "Checking installed packages..."
pacman -S --needed rofi rofi-calc alacritty neovim tmux picom -y 

echo "Deleting default config files..."
rm -rf /home/gpskwlkr/.config/rofi 
rm -rf /home/gpskwlkr/.config/nvim 
rm -rf /home/gpskwlkr/.config/i3-resurrect
rm -rf /home/gpskwlkr/.config/alacritty
rm -rf /home/gpskwlkr/.config/gtk-3.0 
rm -rf /home/gpskwlkr/.tmux.conf

echo "Creating symlinks to actual config files..."
ln -s /home/gpskwlkr/dev/.config/unix/rofi /home/gpskwlkr/.config/rofi 
ln -s /home/gpskwlkr/dev/.config/unix/alacritty /home/gpskwlkr/.config/alacritty 
ln -s /home/gpskwlkr/dev/.config/unix/i3-resurrect /home/gpskwlkr/.config/i3-resurrect
ln -s /home/gpskwlkr/dev/.config/unix/picom /home/gpskwlkr/.config/picom
ln -s /home/gpskwlkr/dev/.config/unix/gtk-3.0 /home/gpskwlkr/.config/gtk-3.0
ln -s /home/gpskwlkr/dev/.config/unix/.tmux.conf /home/gpskwlkr/.tmux.conf

echo "Successfully completed setup, it's recommended that you log out of i3 session and log back in."
