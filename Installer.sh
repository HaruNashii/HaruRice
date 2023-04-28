
# This install all the apps that is configured on the i3 config and that is in the rice
sudo pacman -Sy
sudo pacman -S picom gnome-terminal thunar polybar nitrogen spotify-launcher lxappearance
sudo curl -L https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -o /usr/local/bin/unimatrix
sudo chmod a+rx /usr/local/bin/unimatrix
cd ./polybar-spotify-module/src/
sudo make install
systemctl --user enable spotify-listener
systemctl --user start spotify-listener
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED


# INSTALL THE ROFI CONFIGURATION
if [ -d "~/.config/rofi" ]; then
mkdir ~/.config/rofibackup
mv -f ~/.config/rofi ~/.config/rofibackup
mv -f ./rofi ~/.config/ 
else
mv -f ./rofi ~/.config/ 
fi
cp -rf ./fonts/* ~/.local/share/fonts
fc-cache
echo FONT SUCESSFULY DOWNLOADED



# MAKE A BACKUP OF YOUR OLD I3 CONFIG AND ACTIVE THE RICE ONE
if [ -d "~/.config/i3" ]; then
mkdir ~/.config/i3/backup
mv -f ~/.config/i3/config ~/.config/i3/backup/
mv -f ./i3-config/config ~/.config/i3/
else
mkdir ~/mkdir ~/.config/i3
mv -f ./i3-config/config ~/.config/i3
fi
echo I3 CONFIG SUCESSFULY INSTALLED



# MAKE A BACKUP OF YOUR OLD POLYBAR CONFIG AND ACTIVE THE RICE ONE
mkdir /etc/polybar/backup
mv -f /etc/polybar/config.ini /etc/polybar/backup/
mv -f ./polybar-config/config.ini /etc/polybar/config
ECHO POLYBAR CONFIG SUCESSFULY INSTALLED



# INSTALL THE THEMES AND ICONS
if [ -d "~/.themes" ]; then
mv -f ./Graphite-Dark ~/.themes
else
mkdir ~/.themes
mv -f ./Graphite-Dark ~/.themes
fi

if [ -d "~/.icons" ]; then
mf -f ./ePapirus-Dark ~/.icons
mv -f ./Papirus-Dark ~/.icons
else
mkdir ~/.icons
mf -f ./ePapirus-Dark ~/.icons
mv -f ./Papirus-Dark ~/.icons
fi


# EXIT THE TERMINAL WHEN THE SCRIPT IS FINISH
clear
exit
