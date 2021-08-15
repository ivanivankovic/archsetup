#!/bin/bash

sudo pacman -Syu --noconfirm bspwm virtualbox-guest-utils git rxvt-unicode terminator arandr rofi pulseaudio pavucontrol lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xdotool flameshot firefox sxhkd man-db htop wget curl zsh fzf tmux compton powerline powerline-fonts noto-fonts-emoji
cd /opt ; sudo git clone https://aur.archlinux.org/yay.git ; sudo chown -R $(whoami):$(whoami) yay ; cd yay ; makepkg -si --noconfirm
yay -aS --noconfirm --answerdiff=None polybar
cd /opt ; sudo git clone --depth=1 https://github.com/adi1090x/polybar-themes.git ; sudo chown $(whoami):$(whoami) -R polybar-themes ; cd /opt/polybar-themes ; echo 2 | ./setup.sh ; rm -r $HOME/.config/polybar ; mv $HOME/.config/polybar.old $HOME/.config/polybar
sudo systemctl enable lightdm
yay -aS --noconfirm --answerdiff=None betterlockscreen
yay -aS --noconfirm --answerdiff=None alacritty-git
yay -aS --noconfirm --answerdiff=None alacritty-themes
alacritty-themes --create
alacritty-themes Cobalt-2
sudo pacman -S alsa-utils speaker-test -c2 alsamixer
sudo rm -r /etc/X11
sudo ln -s $HOME/.config/X11 /etc/X11
sudo rm $HOME/.bashrc
sudo ln -s $HOME/.config/bash/bashrc $HOME/.bashrc
sudo ln -s $HOME/.config/pictures/ /usr/share/pictures
sudo rm -r /etc/lightdm
sudo cp -r $HOME/.config/lightdm /etc/lightdm
betterlockscreen -u /usr/share/pictures
sudo usermod -aG $(whoami) lightdm
sudo chmod 750 /home/$(whoami) ; sudo chmod 750 /home/$(whoami)/.config ; sudo chmod 750 -R /home/$(whoami)/.config/pictures
cd /tmp ; wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
echo Y |  KEEP_ZSHRC=no bash install.sh
rm install.sh
chsh -s $(which zsh)
ln -s $HOME/.config/zsh/zshrc $HOME/.zshrc
yay -aS --noconfirm --answerdiff=None antigen-git
curl -L git.io/antigen > antigen.zsh
ln -s $HOME/.config/zsh/zshrc $HOME/.zshrc
