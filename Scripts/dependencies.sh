#!/bin/bash

# REMOVE THE BLOCK OF THE PACMAN IF THE BLOCK EXIST
if [ -f "/var/lib/pacman/db.lck" ]; then
sudo rm "/var/lib/pacman/db.lck"
else
clear
fi


# UPDATE THE SYSTEM AND INSTALL THE DEPENDENCIES
sudo pacman --noconfirm -Sy
sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S base-devel dbus flatpak
