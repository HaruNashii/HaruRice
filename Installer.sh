
# This install all the apps that is configured on the i3 config and that is in the rice
sudo pacman -Sy
sudo pacman -S picom gnome-terminal thunar polybar nitrogen
sudo curl -L https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -o /usr/local/bin/unimatrix
sudo chmod a+rx /usr/local/bin/unimatrix
echo RICES APPS AND COMMANDS SUCCESSFULLY DOWNLOADED


# MAKE A BACKUP OF YOUR OLD ROFI CONFIG AND INSTALL THE RICE ONE
mkdir ~/.config/rofibackup
mv -f ~/.config/rofi ~/.config/rofibackup
mv -f ./rofi ~/.config/ 
cp -rf ./fonts/* ~/.local/share/fonts
fc-cache
echo FONT SUCCESSFULLY INSTALLED



# MAKE A BACKUP OF YOUR OLD I3 CONFIG AND ACTIVE THE RICE ONE
mkdir ~/.config/i3/backup
mv -f ~/.config/i3/config ~/.config/i3/backup/
mv -f ./i3-config/config ~/.config/i3/
echo I3 CONFIG SUCCESSFULLY INSTALLED



# MAKE A BACKUP OF YOUR OLD POLYBAR CONFIG AND ACTIVE THE RICE ONE
mkdir /etc/polybar/backup
mv -f /etc/polybar/config.ini /etc/polybar/backup/
mv -f ./polybar-config/config.ini /etc/polybar/config
echo POLYBAR CONFIG SUCCESSFULLY INSTALLED



# EXIT THE TERMINAL WHEN THE SCRIPT IS FINISH
clear
exit
