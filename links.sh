#!/bin/bash

#set xorg keyboardmap
sudo rm /etc/X11/xorg.conf.d/00-keyboard.conf
sudo ln -s ~/r79conf/xorg-keyboard-conf /etc/X11/xorg.conf.d/00-keyboard.conf

#dhcpcd speedhack
sudo rm /etc/dhcpcd.conf
sudo ln -s ~/r79conf/dhcpcd.conf /etc/dhcpcd.conf

#i3
rm ~/.config/i3/config
ln -s ~/r79conf/i3-wm.conf ~/.config/i3/config

#bashrc
rm ~/.bashrc
ln -s ~/r79conf/.bashrc ~/.bashrc

#zsh
rm ~/.zshrc
ln -s ~/r79conf/.zshrc ~/.zshrc

#xfce4-terminal
rm ~/.config/xfce4/terminal/terminalrc
ln -s ~/r79conf/terminalrc ~/.config/xfce4/terminal/terminalrc

#i3status
#ignoring some errors here as they might happen if one runs the script another time
mkdir ~/.config/i3status
rm ~/.config/i3status/config
ln -s ~/r79conf/i3status.conf ~/.config/i3status/config

#xinitrc
rm ~/.xinitrc
ln -s ~/r79conf/.xinitrc ~/.xinitrc


