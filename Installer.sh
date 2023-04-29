
# This install all the apps that is configured on the i3 config and that is in the rice
sudo pacman -Sy
sudo pacman -S picom gnome-terminal thunar polybar nitrogen spotify-launcher lxappearance

sudo curl -L https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -o /usr/local/bin/unimatrix
sudo chmod a+rx /usr/local/bin/unimatrix

cd ~/HaruRice
cd ./gnome-terminal-transparency
makepkg
sudo pacman -U gnome-terminal-transparency-3.46.8-1-x86_64.pkg.tar.zst
cd ~/HaruRice

cd ./tty-clock
make
sudo make install
cd ~/HaruRice

cd ./polybar-spotify-module/src/
sudo make install
systemctl --user enable spotify-listener
systemctl --user start spotify-listener
cd ~/HaruRice
echo RICES APPS AND COMMANDS SUCESSFULY DOWNLOADED



# INSTALL THE ROFI CONFIGURATION
if [ -d "~/.config/rofi" ]; then
sudo mkdir ~/.config/rofibackup
sudo cp -f ~/.config/rofi ~/.config/rofibackup
sudo cp -f ./rofi ~/.config/ 
else
sudo cp -f ./rofi ~/.config/ 
fi

# INSTALL THE PICOM CONFIGURATION
if [ -d "~/.config/picom/" ]; then
sudo mkdir ~/.config/picom/backup/
sudo cp -f ~/.config/picom/picom.conf ~/.config/picom/backup/
sudo cp -f ./picom-config/picom.conf ~/.config/picom/
else
sudo mkdir ~/.config/picom/
sudo cp -f ./picom-config/picom.conf ~/.config/picom/
fi



# INSTALL THE FONTS AND UPDATE THEN IN THE SYSTEM
if [ -d "~/.local/share/fonts/Google Fonts/" ]; then
sudo cp -f ./fonts/GrapeNuts-Regular.ttf ~/.local/share/fonts/
sudo cp -f ./fonts/Icomoon-Feather.ttf ~/.local/share/fonts/
sudo cp -f ./fonts/losevka-Nerd-Font-Complete.ttf ~/.local/share/fonts/
sudo cp -f ./fonts/JetBrains-Mono-Nerd-Font-Complete.ttf ~/.local/share/fonts/
sudo mkdir ~/.local/share/fonts/Google Fonts/Kiwi Maru/
sudo cp -f ./fonts/Kiwi_Maru_Regular.14.ttf ~/.local/share/fonts/Google Fonts/Kiwi Maru/
else
sudo cp -f ./fonts/GrapeNuts-Regular.ttf ~/.local/share/fonts/
sudo cp -f ./fonts/Icomoon-Feather.ttf ~/.local/share/fonts/
sudo cp -f ./fonts/losevka-Nerd-Font-Complete.ttf ~/.local/share/fonts/
sudo cp -f ./fonts/JetBrains-Mono-Nerd-Font-Complete.ttf ~/.local/share/fonts/
sudo mkdir ~/.local/share/fonts/Google Fonts/
sudo mkdir ~/.local/share/fonts/Google Fonts/Kiwi Maru/
sudo cp -f ./fonts/Kiwi_Maru_Regular.14.ttf ~/.local/share/fonts/Google Fonts/Kimi Maru/
fi
sudo fc-cache
echo FONT SUCESSFULY DOWNLOADED



# MAKE A BACKUP OF YOUR OLD I3 CONFIG AND ACTIVE THE RICE ONE
if [ -d "~/.config/i3" ]; then
sudo mkdir ~/.config/i3/backup
sudo cp -f ~/.config/i3/config ~/.config/i3/backup/
sudo cp -f ./i3-config/config ~/.config/i3/
else
sudo mkdir ~/mkdir ~/.config/i3
sudo cp -f ./i3-config/config ~/.config/i3
fi
echo I3 CONFIG SUCESSFULY INSTALLED



# MAKE A BACKUP OF YOUR OLD POLYBAR CONFIG AND ACTIVE THE RICE ONE
if [ -d "/etc/polybar/" ]; then
sudo mkdir /etc/polybar/backup
sudo cp -f /etc/polybar/config.ini /etc/polybar/backup/
sudo cp -f ./polybar-config/config.ini /etc/polybar/config
else
sudo cp -f ./polybar-config/config.ini /etc/polybar/
fi
ECHO POLYBAR CONFIG SUCESSFULY INSTALLED



# INSTALL THE THEMES
if [ -d "~/.themes" ]; then
sudo cp -f ./Graphite-Dark ~/.themes
else
sudo mkdir ~/.themes
sudo cp -f ./Graphite-Dark ~/.themes
fi
echo THEMES SUCESSFULY INSTALLED




# INSTALL THE ICONS PACKS
if [ -d "~/.icons" ]; then
sudo cp -f ./ePapirus-Dark ~/.icons
sudo cp -f ./Papirus-Dark ~/.icons
else
sudo mkdir ~/.icons
sudo cp -f ./ePapirus-Dark ~/.icons
sudo cp -f ./Papirus-Dark ~/.icons
fi
echo ICONS PACK SUCESSFULY INSTALLED


# RELOAD THE POLYBAR AND THE I3 TO USED THE NEW CONFIG
i3-msg restart
polybar-msg cmd restart
echo I3 AND POLYBAR SUCESSFULY RESTARTED

# EXIT THE TERMINAL WHEN THE SCRIPT IS FINISH
clear
exit
