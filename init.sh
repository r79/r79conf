#!/bin/bash

#install pacaur for reasons
mkdir ~/pacaurbuild
cd ~/pacaurbuild
git clone https://aur.archlinux.org/pacaur.git
cd pacaur
makepkg -si
cd ~
rm -rf ~/pacaurbuild

#install pac's
pacaur -Syu i3-wm xfce4-terminal oh-my-zsh-git

#make zsh default shell
chsh -s /bin/zsh

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
