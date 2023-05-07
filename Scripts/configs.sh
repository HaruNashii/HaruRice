# INSTALL THE ROFI CONFIGURATION
if [ -d "$HOME/.config/rofi/" ]; then
cd "$HOME/HaruRice/"
sudo cp -rf "./rofi" "$HOME/.config/" 
sudo chmod a+x "$HOME/.config/rofi/launcher.sh"
sudo chmod -R a+rw "$HOME/.config/rofi/"
sudo chmod a+rw "$HOME/.config/rofi/*"
else
cd "$HOME/HaruRice/"
sudo cp -rf "./rofi" "$HOME/.config/"
sudo chmod a+x "$HOME/.config/rofi/launcher.sh"
sudo chmod -R a+rw "$HOME/.config/rofi/"
sudo chmod a+rw "$HOME/.config/rofi/*"
fi



# INSTALL THE PICOM CONFIGURATION
if [ -d "$HOME/.config/picom" ]; then
cd "$HOME/HaruRice/"
sudo cp -f "./picom-config/picom.conf" "$HOME/.config/picom/picom.conf"
sudo chmod -R a+rw "$HOME/.config/picom"
sudo chmod a+rw "$HOME/.config/picom/*"
else
cd "$HOME/HaruRice/"
sudo mkdir "$HOME/.config/picom"
sudo cp -f "./picom-config/picom.conf" "$HOME/.config/picom/picom.conf"
sudo chmod -R a+rw "$HOME/.config/picom"
sudo chmod a+rw "$HOME/.config/picom/*"
fi



# move the wallpaper to the pictures for the nitrogen use it
if [ -d "$HOME/Pictures/" ]; then
cd "$HOME/HaruRice/"
sudo cp -f "./Wallpaper/1.png" "$HOME/Pictures/1.png"
else
cd "$HOME/HaruRice/"
sudo mkdir "$HOME/Pictures/"
sudo cp -f "./Wallpaper/1.png" "$HOME/Pictures/1.png"
sudo chmod -R a+rw "$HOME/Pictures"
sudo chmod -R a+rw "$HOME/Pictures/*"
fi



# EXECUTE THE SCRIPT "i3configv1.sh" OR "i3configv2.sh" DEPENDING ON THE FOLDERS EXISTING
if [ -d "$HOME/.i3" ]; 
cd "$HOME/HaruRice/"
./Script/i3configv2.sh
else
cd "$HOME/HaruRice/"
./Script/i3configv1.sh
fi



# CHECK IF THE FOLDER FOR THE INSTALLATION EXIST THEN MAKE A BACKUP OF YOUR OLD POLYBAR CONFIG AND ACTIVE THE RICE ONE
if [ -d "/etc" ]; then
clear
else
sudo mkdir "/etc"
sudo chmod -R a+rw "/etc" 
sudo chmod a+rw "/etc"
sudo chmod a+rw "/etc/*" 
fi
if [ -f "/etc/polybar/config.ini" ]; then
cd "$HOME/HaruRice/"
sudo cp -f "./polybar-config/config.ini" "/etc/polybar/config.ini"
sudo chmod -R a+rw "$HOME/.config/polybar/"
sudo chmod a+rw "$HOME/.config/polybar/*"
else
cd "$HOME/HaruRice/"
sudo mkdir /etc/polybar
sudo cp -f "./polybar-config/config.ini" "/etc/polybar/config.ini"
sudo chmod -R a+rw "/etc/polybar"
sudo chmod a+rw "/etc/polybar/*"
fi



# SET THE PROFILE OF THE GNOME-TERMINAL FOR THE PROFILE THAT IS IN ("terminal-config")
dconf load /org/gnome/terminal/legacy/profiles:/ < $HOME/HaruRice/terminal-config/gnome-terminal-profile.dconf
