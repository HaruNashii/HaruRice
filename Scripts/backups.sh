# MAKE A BACKUP OF YOUR ROFI CONFIGURATION
if [ -d "$HOME/.config/rofi/" ]; then
sudo mkdir "$HOME/.config/rofibackup/"
sudo mv -f "$HOME/.config/rofi/" "$HOME/.config/rofibackup/"
sudo chmod -R a+rw "$HOME/.config/rofibackup/"
sudo chmod a+rw "$HOME/.config/rofibackup/*"
else
clear
fi



# MAKE A BACKUP OF YOUR PICOM CONFIGURATION
if [ -d "$HOME/.config/picom" ]; then
sudo mkdir "$HOME/.config/picom/backup/"
sudo mv -f "$HOME/.config/picom/picom.conf" "$HOME/.config/picom/backup/picom.conf"
sudo chmod -R a+rw "$HOME/.config/picom/backup"
sudo chmod a+rw "$HOME/.config/picom/backup/*"
else
clear
fi



# MAKE A BACKUP OF YOUR POLYBAR CONFIGURATION
if [ -d "/etc/polybar/" ]; then
sudo mkdir "/etc/polybar/backup"
sudo mv -f "/etc/polybar/config.ini" "/etc/polybar/backup/config.ini"
sudo chmod -R a+rw "$HOME/.config/polybar/backup/"
sudo chmod a+rw "$HOME/.config/polybar/backup/*"
else
clear
fi



# MAKE A BACKUP IN BASE OF WHERE IS THE I3 CONFIG FOLDER 
if [ -d "$HOME/.i3" ]; then
sudo mkdir "$HOME/.i3/backup"
sudo mv -f "$HOME/.i3/config" "$HOME/.i3/backup/config"
sudo chmod -R a+rw "$HOME/.i3/backup/"
sudo chmod a+rw "$HOME/.i3/backup/*"
else
clear
fi
if [ -d "$HOME/.config/i3" ]; then
sudo mkdir "$HOME/.config/i3/backup/"
sudo mv -f "$HOME/.config/i3/config" "$HOME/.config/i3/backup/config"
sudo chmod -R a+rw "$HOME/.config/i3/backup/"
sudo chmod a+rw "$HOME/.config/i3/backup/*"
else
clear
fi