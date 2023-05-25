#!/bin/bash


# MAKE A BACKUP OF YOUR OLD I3 CONFIG ON ($HOME/.i3/backup) AND ACTIVE THE RICE ONE ON ($HOME/.i3/)
if [ -d "$HOME/.i3" ]; then
sudo cp -f "$HOME/HaruRice/i3-config/config" "$HOME/.i3/config"
sudo chmod -R a+rw "$HOME/.i3/"
sudo chmod a+rw "$HOME/.i3/*"
else
sudo mkdir "$HOME/.i3/"
sudo cp -rf "$HOME/HaruRice/i3-config/config" "$HOME/.i3/config"
sudo chmod -R a+rw "$HOME/.i3/"
sudo chmod a+rw "$HOME/.i3/*"
fi
