# r79conf

All confs for my Archlinux machines.

Basic idea is that this folder contains all configs and replaces the original files with symlinks to this folder (see links.sh for further information).

On top of that, there's a beautiful install script in init.sh I personally use to install the most basic packages I need for a base installation and all the packages that I provide special configs for. Those packages can be configured in the pkgs.conf file.

## Usage

###Installing a new machine

1. clone this babe of a project
2. change the packages in pkgs.conf (graphics driver for example)
3. change the symlinks in links.sh
4. run init.sh
5. have fun

###Using it on an existing system

If you want to automagically get my cool pkgs installed, see above, otherwise:

1. clone this babe of a project
2. change the symlinks in links.sh
3. only run links.sh
4. have fun

## A word of Warning

CAREFUL!
links.sh removes all your existing config files without creating backups, as its idea is to run this once when setting up a new machine.

If you don't trust me or just want _some_ of the configs, symlink everything together yourself or make modifications in links.sh.

this is a personal thing, so don't expect support, but feel free to steal my ideas, I stole them aswell from here https://www.digitalocean.com/community/tutorials/how-to-use-git-to-manage-your-user-configuration-files-on-a-linux-vps#setting-up-your-seed-machine
