#!/bin/bash

# this remove the pacman block if exist
if [ -f "/var/lib/pacman/db.lck" ]; then
sudo rm "/var/lib/pacman/db.lck"
else
clear
fi



# This install all the apps that is configured on the i3 config and that is in the rice and the dependencies
sudo pacman -Sy
sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S  docbook-xsl libnautilus-extension gnome-shell yelp-tools meson
sudo pacman --noconfirm -S picom polybar nitrogen lxappearance gnome-screenshot rofi neofetch
flatpak install spotify



# this verify if all folders need exist if don`t exist will create then install unimatrix
if [ -d "/usr" ]; then
clear
else
sudo mkdir "/usr"
sudo chmod -R a+rw "/usr"
sudo chmod a+rw "/usr/*"
fi
if [ -d "/usr/local" ]; then
clear
else
sudo mkdir "/usr/local"
sudo chmod -R a+rw "/usr/local"
sudo chmod a+rw "/usr/local/*"
fi
if [ -d "/usr/local/bin" ]; then
clear
else
sudo mkdir "/usr/local/bin"
sudo chmod -R a+rw "/usr/local/bin"
sudo chmod a+rw "/usr/local/bin/*"
fi
if [ -x "/usr/local/bin/unimatrix" ]; then
clear
else
sudo curl -L https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -o "/usr/local/bin/unimatrix"
sudo chmod a+rx "/usr/local/bin/unimatrix"
fi



# this install the tty-clock
if [ -x "/usr/local/bin/tty-clock" ]; then
clear
else
cd "$HOME/HaruRice/"
cd "./tty-clock/"
make
sudo make install
cd "$HOME/HaruRice/"
fi



# this install  the polybar spotify module
cd "$HOME/HaruRice/"
cd "./polybar-spotify-module/src/"
sudo make install
systemctl --user enable spotify-listener
systemctl --user start spotify-listener
cd "$HOME/HaruRice/"



# INSTALL THE GNOME-TERMINAL-TRANSPARENCY
sudo pacman --noconfirm -S gnome-terminal
cd "$HOME/HaruRice/"
cd "./gnome-terminal-transparency"
makepkg
sudo pacman -U gnome-terminal-transparency-3.46.8-1-x86_64.pkg.tar.zst
cd "$HOME/HaruRice"




