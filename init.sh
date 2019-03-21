#!/bin/bash

#install pacaur for reasons
mkdir ~/pikaurbuild
cd ~/pikaurbuild
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -si
cd ~
rm -rf ~/pikaurbuild

#install pac's
pikaur -Syu xf86-video-intel xorg-server xorg-xinit i3-wm i3status i3lock xfce4-terminal oh-my-zsh-git j4-dmenu-desktop flameshot arandr all-repository-fonts

#make zsh default shell
chsh -s /bin/zsh

source ~/r79conf/links.sh
