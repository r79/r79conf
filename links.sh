#!/bin/bash

#############
#CHANGE THIS#
#############
configpath=`pwd`/conf

#############
#PICK WISELY#
#############


#xorg intel TearFree YOU ONLY WANT THIS IF YOU USE THE INTEL GRAPHICS DRIVER
#sudo rm /etc/X11/xorg.conf.d/20-intel.conf
#sudo ln -s ~/r79conf/conf/xorg-intel-conf /etc/X11/xorg.conf.d/20-intel.conf

#xorg mouse sens fix ONLY NECESSARY IF YOU WANT TO CHANGE YOUR MOUSE SPEED
#sudo rm /etc/X11/xorg.conf.d/99-libinput-custom-config.conf
#sudo ln -s ~/r79conf/conf/xorg-mouse-conf /etc/X11/xorg.conf.d/99-libinput-custom-config.conf

#set xorg keyboardmap
sudo rm /etc/X11/xorg.conf.d/00-keyboard.conf
sudo ln -s $configpath/xorg-keyboard-conf /etc/X11/xorg.conf.d/00-keyboard.conf

#dhcpcd speedhack
sudo rm /etc/dhcpcd.conf
sudo ln -s $configpath/dhcpcd.conf /etc/dhcpcd.conf

#i3
rm ~/.i3/config
ln -s $configpath/i3-wm.conf ~/.i3/config

#zsh
rm ~/.zshrc
ln -s $configpath/.zshrc ~/.zshrc

#bashrc
rm ~/.bashrc
ln -s $configpath/.bashrc ~/.bashrc

#xfce4-terminal
rm -r ~/.config/xfce4/terminal
ln -s $configpath/terminal ~/.config/xfce4/terminal

#i3status
#ignoring some errors here as they might happen if one runs the script another time
mkdir ~/.config/i3status
rm ~/.config/i3status/config
ln -s $configpath/i3status.conf ~/.config/i3status/config

#xinitrc
rm ~/.xinitrc
ln -s $configpath/.xinitrc ~/.xinitrc

#pikaur
rm ~/.config/pikaur.conf
ln -s $configpath/pikaur.conf ~/.config/pikaur.conf
