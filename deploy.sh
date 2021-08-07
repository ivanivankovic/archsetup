#!/bin/bash

sudo pacman -S --noconfirm bspwm virtualbox-guest-utils git rxvt-unicode terminator arandr rofi pulseaudio pavucontrol lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xdotool flameshot firefox sxhkd man-db htop
cd /opt ; sudo git clone https://aur.archlinux.org/yay.git ; sudo chown -R arch:arch yay ; cd yay ; makepkg -si --noconfirm
yay -aS --noconfirm --answerdiff=None polybar
cd /opt ; sudo git clone --depth=1 https://github.com/adi1090x/polybar-themes.git ; sudo chown arch:arch -R polybar-themes ; cd /opt/polybar-themes ; echo 2 | ./setup.sh
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
sudo usermod -aG arch lightdm
sudo chmod 750 /home/arch ; sudo chmod 750 /home/arch/.config ; sudo chmod 750 -R /home/arch/.config/pictures
