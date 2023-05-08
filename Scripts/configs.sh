# INSTALL THE ROFI CONFIGURATION
if [ -d "$HOME/.config/rofi/" ]; then
sudo cp -rf "$HOME/HaruRice/rofi" "$HOME/.config/rofi" 
sudo chmod a+x "$HOME/.config/rofi/launcher.sh"
sudo chmod -R a+rw "$HOME/.config/rofi/"
sudo chmod a+rw "$HOME/.config/rofi/*"
else
cd "$HOME/HaruRice/"
sudo cp -rf "$HOME/HaruRice/rofi" "$HOME/.config/rofi"
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



# EXPORT THE CONFIG OF THE FOR THE I3 FOLDER
if [ -d "$HOME/.i3/" ]; then
./Scripts/i3configv2.sh
sudo chmod -R a+rw "$HOME/.config/i3"
sudo chmod a+rw "$HOME/.config/i3/*"
else
./Scripts/i3configv1.sh
sudo chmod -R a+rw "$HOME/.config/i3"
sudo chmod a+rw "$HOME/.config/i3/*"
fi



# CONFIGURE THE POLYBAR WITH A PERSONAL SCRIPT
sudo mkdir "$HOME/.HaruScripts"
sudo cp -rf "$HOME/HaruRice/Scripts/spotifyscript.sh" "$HOME/.HaruScripts"
sudo cp -rf "$HOME/HaruRice/Scripts/spotifyscript1.sh" "$HOME/.HaruScripts"
sudo cp -rf "$HOME/HaruRice/Scripts/spotifyscript2.sh" "$HOME/.HaruScripts"
sudo chmod a+rwx $HOME/.HaruScripts/*



# SET THE PROFILE OF THE GNOME-TERMINAL FOR THE PROFILE THAT IS IN ("terminal-config")
dconf load /org/gnome/terminal/legacy/profiles:/ < $HOME/HaruRice/terminal-config/gnome-terminal-profile.dconf



# CHECK IF THE FOLDER FOR THE INSTALLATION EXIST THEN EXPORT THE RICE CONFIG TO THE FOLDER
if [ -d "/etc" ]; then
clear
else
sudo mkdir "/etc"
sudo chmod -R a+rw "/etc"
sudo chmod a+rw "/etc"
sudo chmod a+rw "/etc/*"
fi

if [ -d "/etc/polybar" ]; then
clear
else
sudo mkdir /etc/polybar
fi

sudo cp -f "$HOME/HaruRice/polybar-config/config.ini" "/etc/polybar/config.ini"
sudo chmod a+rw "/etc/polybar/config.ini"
