#!/bin/bash

rundir=`pwd`

#install pacaur for reasons
mkdir ~/pikaurbuild
cd ~/pikaurbuild
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -si
cd ~
rm -rf ~/pikaurbuild
cd $rundir

#install pac's
pikaur -Syu --noconfirm `sed -e "/^#/d" -e "s/#.*//" pkgs.conf`

#make zsh default shell
chsh -s /bin/zsh

source ~/r79conf/links.sh
