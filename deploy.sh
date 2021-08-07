#!/bin/bash

sudo pacman -S --no-confirm bspwm virtualbox-guest-utils git rxvt-unicode terminator arandr rofi pulseaudio pavucontrol lightdm ligthdm-gtk-greeter lightdm-gtk-greeter-settings xdotool flameshot
mkdir $HOME/.config
cd $HOME/.config
git clone "https://github.com/ivanivankovic/archsetup" .
cd /opt ; sudo git clone https://aur.archlinux.org/yay.git ; sudo chown -R arch:arch yay ; cd yay ; makepkg -si --noconfirm
yay -aS --noconfirm --answerdiff=None polybar
sudo systemctl enable lightdm
yay -aS --noconfirm --answerdiff=None betterlockscreen
yay -aS --noconfirm --answerdiff=None alacritty
sudo pacman -S alsa-utils speaker-test -c2 alsamixer
sudo rm -r /etc/X11
sudo ln -s $HOME/.config/X11 /etc/X11
sudo rm $HOME/.bashrc
sudo ln -s $HOME/.config/bash/bashrc $HOME/.bashrc
sudo ln -s $HOME/.config/pictures/ /usr/share/pictures
sudo rm -r /etc/lightdm
sudo cp -r $HOME/.config/lightdm /etc/lightdm
betterlockscreen -u /usr/share/pictures
