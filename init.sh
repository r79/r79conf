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
pikaur -Syu i3-wm xfce4-terminal oh-my-zsh-git

#make zsh default shell
chsh -s /bin/zsh

#set xorg keyboardmap
sudo rm /etc/X11/xorg.conf.d/00-keyboard.conf
sudo ln -s ~/r79conf/xorg-keyboard-conf /etc/X11/xorg.conf.d/00-keyboard.conf

#i3
rm ~/.config/i3/config
ln -s ~/r79conf/i3-wm.conf ~/.config/i3/config

#bashrc
rm ~/.bashrc
ln -s ~/r79conf/.bashrc ~/.bashrc

#zsh
rm ~/.zshrc
ln -s ~/r79conf/.zshrc ~/.zshrc

#xterm
rm ~/.config/xfce4/terminal/terminalrc
ln -s ~/r79conf/terminalrc ~/.config/xfce4/terminal/terminalrc

#i3status
#ignoring some errors here as they might happen if one runs the script another time
mkdir ~/.config/i3status
rm ~/.config/i3status/config
ln -s ~/r79conf/i3status.conf ~/.config/i3status/config
