#!/bin/bash

# MAKE A BACKUP OF YOUR OLD I3 CONFIG ON ($HOME/.config/i3/backup) AND ACTIVE THE RICE ONE ON ($HOME/.config/i3/)
if [ -d "$HOME/.config/i3" ]; then
sudo cp -rf "$HOME/HaruRice/i3-config/config" "$HOME/.config/i3/config"
sudo chmod -R a+rw "$HOME/.config/i3/"
sudo chmod a+rw "$HOME/.config/i3/*"
else
sudo mkdir "$HOME/.config/i3"
sudo cp -rf "$HOME/HaruRice/i3-config/config" "$HOME/.config/i3/config"
sudo chmod -R a+rw "$HOME/.config/i3/"
sudo chmod a+rw "$HOME/.config/i3/*"
fi
