
# This install all the apps that is configured on the i3 config and that is in the rice
sudo pacman -Sy
clear
echo Package is Synchronized
sudo pacman -S picom thunar polybar nitrogen spotify-launcher lxappearance
clear
echo PACKAGE IS SYNCHRONIZED 

if [ -x "/usr/local/bin/unimatrix" ]; then
echo UNIMATRIX ALREADY DOWNLOADED
else
sudo curl -L https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -o /usr/local/bin/unimatrix
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
sudo chmod a+rx /usr/local/bin/unimatrix
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
fi

if [ -x "/usr/local/bin/tty-clock" ]; then
echo TTY-CLOCK ALREADY DOWNLOADED
else
cd ./tty-clock/
make
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
sudo make install
cd $HOME/HaruRice/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX
echo TTY-CLOCK DOWNLOADED
fi


cd ./polybar-spotify-module/src/
sudo make install
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
systemctl --user enable spotify-listener
systemctl --user start spotify-listener
cd $HOME/HaruRice/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED



# INSTALL THE ROFI CONFIGURATION
if [ -d "$HOME/.config/rofi/" ]; then
sudo mkdir $HOME/.config/rofibackup/
sudo mv -f $HOME/.config/rofi/ $HOME/.config/rofibackup/
sudo cp -f ./rofi $HOME/.config/ 
sudo chmod +x cd $HOME/.config/rofi/launcher.sh
chmod -R a+rw $HOME/.config/rofi/
chmod -R a+rw $HOME/.config/rofibackup/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG BACKUP IS MADE AND THE RICE CONFIG APPLIED
cd $HOME
else
sudo cp -f ./rofi $HOME/.config/ 
sudo chmod +x cd $HOME/.config/rofi/launcher.sh
chmod -R a+rw $HOME/.config/rofi/
cd $HOME
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED

fi

# INSTALL THE PICOM CONFIGURATION
if [ -d "$HOME/.config/picom/" ]; then
sudo mkdir $HOME/.config/picom/backup/
sudo mv -f $HOME/.config/picom/picom.conf $HOME/.config/picom/backup/
sudo cp -f ./picom-config/picom.conf $HOME/.config/picom/
chmod -R a+rw $HOME/.config/picom/
chmod -R a+rw $HOME/.config/picom/backup/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS BACKUP AND THE RICE CONFIG IS APPLIED
else
sudo mkdir $HOME/.config/picom/
sudo cp -f ./picom-config/picom.conf $HOME/.config/picom/
chmod -R a+rw $HOME/.config/picom/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED
fi



# INSTALL THE FONTS AND UPDATE THEN IN THE SYSTEM
if [ -d "$HOME/.local/share/fonts/Google Fonts/" ]; then
sudo cp -f ./fonts/GrapeNuts-Regular.ttf $HOME/.local/share/fonts/
sudo cp -f ./fonts/Icomoon-Feather.ttf $HOME/.local/share/fonts/
sudo cp -f ./fonts/losevka-Nerd-Font-Complete.ttf $HOME/.local/share/fonts/
sudo cp -f ./fonts/JetBrains-Mono-Nerd-Font-Complete.ttf $HOME/.local/share/fonts/
sudo mkdir $HOME/.local/share/fonts/Google Fonts/Kiwi Maru/
sudo cp -f ./fonts/Kiwi_Maru_Regular.14.ttf $HOME/.local/share/fonts/Google Fonts/Kiwi Maru/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED
echo GOOGLE FONTS FOLDERS IS CREATED AND THE FONTS ADDED
echo FONT-CACHE SUCESSFULY UPDATED
else
sudo cp -f ./fonts/GrapeNuts-Regular.ttf $HOME/.local/share/fonts/
sudo cp -f ./fonts/Icomoon-Feather.ttf $HOME/.local/share/fonts/
sudo cp -f ./fonts/losevka-Nerd-Font-Complete.ttf $HOME/.local/share/fonts/
sudo cp -f ./fonts/JetBrains-Mono-Nerd-Font-Complete.ttf $HOME/.local/share/fonts/
sudo mkdir $HOME/.local/share/fonts/Google Fonts/
sudo mkdir $HOME/.local/share/fonts/Google Fonts/Kiwi Maru/
sudo cp -f ./fonts/Kiwi_Maru_Regular.14.ttf $HOME/.local/share/fonts/Google Fonts/Kimi Maru/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED
echo FONTS SUCESSFULY ADDED
echo FONT-CACHE SUCESSFULY UPDATED
fi
sudo fc-cache




# MAKE A BACKUP OF YOUR OLD I3 CONFIG AND ACTIVE THE RICE ONE
if [ -d "$HOME/.config/i3" ]; then
sudo mkdir $HOME/.config/i3/backup
sudo mv -f $HOME/.config/i3/config $HOME/.config/i3/backup/
sudo cp -f ./i3-config/config $HOME/.config/i3/
chmod -R a+rw $HOME/.config/i3/
chmod -R a+rw $HOME/.config/i3/backup/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED
echo FONTS SUCESSFULY ADDED
echo FONT-CACHE SUCESSFULY UPDATED
echo I3 CONFIG BACKUP IS MADE AND APPLIED THE RICE ONE
else
sudo mkdir $HOME/.config/i3
sudo cp -f ./i3-config/config $HOME/.config/i3
chmod -R a+rw $HOME/.config/i3/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED
echo FONTS SUCESSFULY ADDED
echo FONT-CACHE SUCESSFULY UPDATED
echo I3 CONFIG IS MADE AND APPLIED
fi



# MAKE A BACKUP OF YOUR OLD POLYBAR CONFIG AND ACTIVE THE RICE ONE
if [ -d "/etc/polybar/" ]; then
sudo mkdir /etc/polybar/backup
sudo mv -f /etc/polybar/config.ini /etc/polybar/backup/
sudo cp -f ./polybar-config/config.ini /etc/polybar/
chmod -R a+rw $HOME/.config/polybar/
chmod -R a+rw $HOME/.config/polybar/backup/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED
echo FONTS SUCESSFULY ADDED
echo FONT-CACHE SUCESSFULY UPDATED
echo I3 CONFIG IS MADE AND APPLIED
echo POLYBAR CONFIG BACKUP IS MADE AND THE RICE ONE IS APPLIED
else
sudo cp -f ./polybar-config/config.ini /etc/polybar/
chmod -R a+rw $HOME/.config/polybar/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED
echo FONTS SUCESSFULY ADDED
echo FONT-CACHE SUCESSFULY UPDATED
echo I3 CONFIG IS MADE AND APPLIED
echo POLYBAR CONFIG IS MADE AND APPLIED
fi



# INSTALL THE THEMES
if [ -d "$HOME/.themes" ]; then
sudo cp -f ./Graphite-Dark $HOME/.themes
chmod -R a+rw $HOME/.themes/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED
echo FONTS SUCESSFULY ADDED
echo FONT-CACHE SUCESSFULY UPDATED
echo I3 CONFIG IS MADE AND APPLIED
echo POLYBAR CONFIG IS MADE AND APPLIED
echo GRAPHITE-DARK THEME IS MOVED FOR .THEMES
else
sudo mkdir $HOME/.themes
sudo cp -f ./Graphite-Dark $HOME/.themes
chmod -R a+rw $HOME/.themes/
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED
echo FONTS SUCESSFULY ADDED
echo FONT-CACHE SUCESSFULY UPDATED
echo I3 CONFIG IS MADE AND APPLIED
echo POLYBAR CONFIG IS MADE AND APPLIED
echo THEMES FOLDER IS CREATED AND GRAPHITE-DARK THEME IS MOVED FOR THERE
fi



# RELOAD THE POLYBAR AND THE I3 TO USED THE NEW CONFIG
i3-msg restart
polybar-msg cmd restart
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED
echo FONTS SUCESSFULY ADDED
echo FONT-CACHE SUCESSFULY UPDATED
echo I3 CONFIG IS MADE AND APPLIED
echo POLYBAR CONFIG IS MADE AND APPLIED
echo GRAPHITE-DARK THEME IS MOVED FOR .THEMES
echo I3 AND POLYBAR SUCESSFULY RESTARTED

# INSTALL THE GNOME-TERMINAL-TRANSPARENCY
cd $HOME/HaruRice
cd ./gnome-terminal-transparency
makepkg
sudo pacman -U gnome-terminal-transparency-3.46.8-1-x86_64.pkg.tar.zst
cd $HOME/HaruRice
clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED
echo FONTS SUCESSFULY ADDED
echo FONT-CACHE SUCESSFULY UPDATED
echo I3 CONFIG IS MADE AND APPLIED
echo POLYBAR CONFIG IS MADE AND APPLIED
echo GRAPHITE-DARK THEME IS MOVED FOR .THEMES
echo GNOME-TERMINAL-TRANSPARENCY DOWNLOADED
