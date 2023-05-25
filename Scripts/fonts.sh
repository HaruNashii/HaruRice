#!/bin/bash


# CHECK IF THE FOLDERS OF THE FONTS EXIST, IF DON'T EXIST WILL CREATE.
if [ -d "$HOME/.local" ]; then
clear
else
mkdir "$HOME/.local"
sudo chmod -R a+rw "$HOME/.local"
sudo chmod a+rw "$HOME/.local/*"
fi

if [ -d "$HOME/.local/share" ]; then
clear
else
sudo mkdir "$HOME/.local/share"
sudo chmod -R a+rw "$HOME/.local/share"
sudo chmod a+rw "$HOME/.local/share/*"
fi

if [ -d "$HOME/.local/share/fonts/" ]; then
clear
else
sudo mkdir $HOME/.local/share/fonts
sudo chmod -R a+rw $HOME/.local/share/fonts
sudo chmod a+rw $HOME/.local/share/fonts/*
fi



# INSTALL THE FONTS IN YOUR SYSTEM
if [ -d "/usr/share/fonts/noto-cjk" ]; then
cd "$HOME/HaruRice/"
sudo cp -f "./fonts/GrapeNuts-Regular.ttf" "$HOME/.local/share/fonts/GrapeNuts-Regular.ttf"
sudo cp -f "./fonts/Icomoon-Feather.ttf" "$HOME/.local/share/fonts/Icomoon-Feather.ttf"
sudo cp -f "./fonts/losevka-Nerd-Font-Complete.ttf" "$HOME/.local/share/fonts/losevka-Nerd-Font-Complete.ttf"
sudo cp -f "./fonts/JetBrains-Mono-Nerd-Font-Complete.ttf" "$HOME/.local/share/fonts/JetBrains-Mono-Nerd-Font-Complete.ttf"
sudo cp -f "./fonts/Font_Awesome_5_Free_Solid.otf" "$HOME/.local/share/fonts/Font_Awesome_5_Free_Solid.otf"
sudo cp -f "./fonts/NotoSansCJK-Regular.ttc" "/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc"
cd "$HOME/HaruRice/"
else
cd "$HOME/HaruRice/"
sudo cp -f "./fonts/GrapeNuts-Regular.ttf" "$HOME/.local/share/fonts/"
sudo cp -f "./fonts/Icomoon-Feather.ttf" "$HOME/.local/share/fonts/"
sudo cp -f "./fonts/losevka-Nerd-Font-Complete.ttf" "$HOME/.local/share/fonts/"
sudo cp -f "./fonts/JetBrains-Mono-Nerd-Font-Complete.ttf" "$HOME/.local/share/fonts/"
sudo cp -f "./fonts/Font_Awesome_5_Free_Solid.otf" "$HOME/.local/share/fonts/"
sudo mkdir "/usr/share/fonts/noto-cjk"
sudo cp -f "./fonts/NotoSansCJK-Regular.ttc" "/usr/share/fonts/noto-cjk/"
sudo chmod -R a+rw "/usr/share/fonts/noto-cjk"
sudo chmod a+rw "/usr/share/fonts/*"
cd "$HOME/HaruRice/"
fi



# UPDATE THE CACHE OF THE FONT ON YOUR SYSTEM
sudo fc-cache
