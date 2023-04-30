# THIS IS THE FIRST SCRIPT I MADE, IT MAY HAVE ANY ERROR IN ANY DISTRO DIFFERENT THAN ARCH AND MANJARO. 
# RUN IT WITH YOUR RESPONSIBILIT!

![Screenshot from 2023-04-30 18-20-27](https://user-images.githubusercontent.com/116776134/235376866-077d6c5c-7ba8-406c-b658-c33d6e7ebf9b.png)


- **ePapirus and Papirus White Icons
WILL NOT BE INSTALLED BECAUSE IS TO MANY ARCHIVE HOW CAN GET THE ICONS BY HERE**

```https://www.gnome-look.org/p/1166289/```

# Credits


**This Script Uses the Polybar-Spotify-Module made by
 @Mihirlad55 / Mihir lad**

https://github.com/mihirlad55
https://github.com/mihirlad55/polybar-spotify-module


**This Script also use the rofi theme and config made by
 @adi1090x / Aditya Shakya**

https://github.com/adi1090x
https://github.com/adi1090x/rofi

**This Script also use the tyy-clock made by
 xorg62**

https://github.com/xorg62
https://github.com/xorg62/tty-clock


# This Rice will install

- picom
- gnome-terminal-transparency
- gnome-screenshot
- tyy-clock made by @xorg62
- unimatrix
- fonts (GrapeNuts, NotoSans-CJK, Icomoon-Feather, losevka-Nerd, JetBrains-Mono-Nerd, Awesome5Free.)
- polybar
- lxapperance
- GTK Graphite Dark Theme
- Thunar
- spotify (from flatpak, it's work better with the spotify-module for me)
- polybar-spotify-module made by @Mihirlad55
- rofi
- rofi themes and config made by @adi1090x
- nitrogen

# Backups

**all your config files should be backup in the same folder with the name backup**

- rofi (~/.config/rofibackup)
- polybar (/etc/polybar/backup)
- i3 (~/.config/i3/backup)
- picom (~/.config/picom/backup)

if your use the installer2.sh

the i3 config will be in (~/.i3/backup)

# Requirements

**you will need to use the "systemd" i your don't use you can easily modify the script to work**

**this scripts uses the "GNU Core Utilities" such as "mv" "cp" "mkdir" "chmod" "make" if your distro don't have it will not work** 

**you will need the "GIT" "base-devel" "dbus" "flatpak" to clone the repository and compile the tyy-clock"**
**you can install it with the following command in your terminal**

```sudo pacman -S git base-devel dbus gvfs flatpak```




# Installation

**THIS SCRIPT WILL NOT APPLY THE THEME AND THE WALLPAPER THIS YOU WILL NEED TO MAKE BY THE NITROGEN AND THE LXAPPERANCE THAT IS DOWNLOADED BY THE SCRIPT**

**THE INSTALLER.SH IS THE NORMAL ONE JUST USE THE INSTALLER2.SH IF YOUR I3 FOLDER IS IN YOUR $HOME FOLDER (like in manjaro i3)**


**Open the terminal and run this command**


```cd ~```

```git clone https://github.com/HaruNashii/HaruRice.git```

```cd HaruRice```

```sudo chmod +x Installer.sh```

```./Installer.sh```


