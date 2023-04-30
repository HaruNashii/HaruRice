
# This install all the apps that is configured on the i3 config and that is in the rice
sudo pacman -Sy
clear
sudo pacman -S picom thunar polybar nitrogen lxappearance gnome-screenshot
flatpak install spotify

clear
echo PACKAGE IS SYNCHRONIZED 

if [ -x "/usr/local/bin/unimatrix" ]; then
clear
else
sudo curl -L https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -o "/usr/local/bin/unimatrix"
sudo chmod a+rx "/usr/local/bin/unimatrix"
fi

clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED


if [ -d "$HOME/Pictures/"]; then
sudo cp -f "./Wallpaper/*" "$HOME/Pictures/"
else
sudo mkdir "$HOME/Pictures/"
sudo cp -f "./Wallpaper/*" "$HOME/Pictures/"
sudo chmod -R a+rw "$HOME/Pictures"
fi

if [ -x "/usr/local/bin/tty-clock" ]; then
clear
else
cd "./tty-clock/"
make
sudo make install
cd "$HOME/HaruRice/"
fi

clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX
echo TTY-CLOCK DOWNLOADED



cd "./polybar-spotify-module/src/"
sudo make install
systemctl --user enable spotify-listener
systemctl --user start spotify-listener
cd "$HOME/HaruRice/"

clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED



# INSTALL THE ROFI CONFIGURATION
if [ -d "$HOME/.config/rofi/" ]; then
sudo mkdir "$HOME/.config/rofibackup/"
sudo mv -f "$HOME/.config/rofi/" "$HOME/.config/rofibackup/"
sudo cp -rf "./rofi" "$HOME/.config/" 
sudo chmod +x cd "$HOME/.config/rofi/launcher.sh"
sudo chmod -R a+rw "$HOME/.config/rofi/"
sudo chmod -R a+rw "$HOME/.config/rofibackup/"
cd "$HOME/HaruRice/"
else
sudo cp -rf "./rofi" "$HOME/.config/" 
sudo chmod +x cd "$HOME/.config/rofi/launcher.sh"
sudo chmod -R a+rw "$HOME/.config/rofi/"
cd "/$HOME/HaruRice"
fi

clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED



# INSTALL THE PICOM CONFIGURATION
if [ -d "$HOME/.config/picom/" ]; then
sudo mkdir "$HOME/.config/picom/backup/"
sudo mv -f "$HOME/.config/picom/picom.conf" "$HOME/.config/picom/backup/picom.conf"
sudo cp -f "./picom-config/picom.conf" "$HOME/.config/picom/picom.conf"
sudo chmod -R a+rw "$HOME/.config/picom/"
sudo chmod -R a+rw "$HOME/.config/picom/backup/"
else
sudo mkdir "$HOME/.config/picom/"
sudo cp -f "./picom-config/picom.conf" "$HOME/.config/picom/picom.conf"
sudo chmod -R a+rw "$HOME/.config/picom/"
fi

clear
echo PACKAGE IS SYNCHRONIZED 
echo UNIMATRIX DOWNLOADED
echo TTY-CLOCK DOWNLOADED
echo SPOTIFY-MODULE DOWNLOADED
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED
echo ROFI CONFIG IS MADE AND APPLIED
echo PICOM CONFIG IS MADE AND APPLIED


# INSTALL THE FONTS AND UPDATE THEN IN THE SYSTEM
if [ -d /usr/share/fonts/noto-cjk" ]; then
sudo cp -f "./fonts/GrapeNuts-Regular.ttf" "$HOME/.local/share/fonts/GrapeNuts-Regular.ttf"
sudo cp -f "./fonts/Icomoon-Feather.ttf" "$HOME/.local/share/fonts/Icomoon-Feather.ttf"
sudo cp -f "./fonts/losevka-Nerd-Font-Complete.ttf" "$HOME/.local/share/fonts/losevka-Nerd-Font-Complete.ttf"
sudo cp -f "./fonts/JetBrains-Mono-Nerd-Font-Complete.ttf" "$HOME/.local/share/fonts/JetBrains-Mono-Nerd-Font-Complete.ttf"
sudo cp -f "./fonts/Font_Awesome_5_Free_Solid.otf" "$HOME/.local/share/fonts/Font_Awesome_5_Free_Solid.otf"
sudo cp -f "./fonts/NotoSansCJK-Regular.ttc" "/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc"
else
sudo cp -f "./fonts/GrapeNuts-Regular.ttf" "$HOME/.local/share/fonts/"
sudo cp -f "./fonts/Icomoon-Feather.ttf" "$HOME/.local/share/fonts/"
sudo cp -f "./fonts/losevka-Nerd-Font-Complete.ttf" "$HOME/.local/share/fonts/"
sudo cp -f "./fonts/JetBrains-Mono-Nerd-Font-Complete.ttf" "$HOME/.local/share/fonts/"
sudo mkdir "/usr/share/fonts/noto-cjk"
sudo cp -f "./fonts/NotoSansCJK-Regular.ttc" "/usr/share/fonts/noto-cjk/"
fi
sudo fc-cache

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



# MAKE A BACKUP OF YOUR OLD I3 CONFIG AND ACTIVE THE RICE ONE
if [ -d "$HOME/.i3" ]; then
sudo mkdir "$HOME/.i3/backup"
sudo mv -f "$HOME/.i3/config" "$HOME/.i3/backup/config"
sudo cp -f "./i3-config/config" "$HOME/.i3/config"
sudo chmod -R a+rw "$HOME/.i3/"
sudo chmod -R a+rw "$HOME/.i3/backup/"
else
sudo mkdir "$HOME/.i3/"
sudo cp -f "./i3-config/config" "$HOME/.i3/config"
sudo chmod -R a+rw "$HOME/.i3/"
fi

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


# MAKE A BACKUP OF YOUR OLD POLYBAR CONFIG AND ACTIVE THE RICE ONE
if [ -d "/etc/polybar/" ]; then
sudo mkdir "/etc/polybar/backup"
sudo mv -f "/etc/polybar/config.ini" "/etc/polybar/backup/config.ini"
sudo cp -f "./polybar-config/config.ini" "/etc/polybar/config.ini"
sudo chmod -R a+rw "$HOME/.config/polybar/"
sudo chmod -R a+rw "$HOME/.config/polybar/backup/"
else
sudo cp -f "./polybar-config/config.ini" "/etc/polybar/config.ini"
sudo chmod -R a+rw "/etc/polybar/"
fi

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



# INSTALL THE THEMES
if [ -d "$HOME/.themes" ]; then
sudo cp -rf "./Graphite-Dark" "$HOME/.themes"
sudo chmod -R a+rw "$HOME/.themes/"
else
sudo mkdir "$HOME/.themes"
sudo cp -rf "./Graphite-Dark" "$HOME/.themes"
sudo chmod -R a+rw "$HOME/.themes/"
fi

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
cd "$HOME/HaruRice/"
cd "./gnome-terminal-transparency"
makepkg
sudo pacman -U gnome-terminal-transparency-3.46.8-1-x86_64.pkg.tar.zst
cd "$HOME/HaruRice"

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
echo GRAPHITE-DARK THEME IS MOVED FOR THEMES
echo GNOME-TERMINAL-TRANSPARENCY DOWNLOADED
clear
echo EVERYTHING DONE, YOU SHOULD REBOOT