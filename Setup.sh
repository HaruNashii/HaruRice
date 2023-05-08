# ADD PERMISSION FOR THE SCRIPTS TO RUN
sudo chmod a+rwx $HOME/HaruRice/Scripts/i3configv1.sh
sudo chmod a+rwx $HOME/HaruRice/Scripts/i3configv2.sh
sudo chmod a+rwx $HOME/HaruRice/Scripts/dependencies.sh
sudo chmod a+rwx $HOME/HaruRice/Scripts/backups.sh
sudo chmod a+rwx $HOME/HaruRice/Scripts/configs.sh
sudo chmod a+rwx $HOME/HaruRice/Scripts/fonts.sh
sudo chmod a+rwx $HOME/HaruRice/Scripts/apps.sh
echo PERMISSION ADDED TO THE SCRIPTS

# REMOVE THE BLOCK OF THE PACMAN IF EXIST
# UPDATE THE SYSTEM AND INSTALL THE DEPENDENCIES
./Scripts/dependencies.sh

# MAKE A BACKUP OF YOUR (i3, polybar, rofi and picom.) CONFIGURATION, THE LOCALIZATION OF THE BACKUP IS ON README ON GITHUB
./Scripts/backups.sh

# EXPORT ALL THE HARURICE CONFIGS OF (i3, polybar, rofi and picom.) FOR YOUR SYSTEM
./Scripts/configs.sh

# EXPORT ALL FONTS THAT IS USED IN THE RICE FOR YOUR SYSTEM
./Scripts/fonts.sh

# INSTALL ALL APPS THAT IS CONFIGURED ON "i3" YOU CAN REMOVE THIS LINE IF YOU DON'T WANT THE APPS BUY YOU WILL NEED TO EDIT THE i3 CONFIG FILE BY YOURSELF
./Scripts/apps.sh

# RESTART THE "i3" FOR USE THE NEW CONFIGURATION
i3-msg restart

# RESTART THE "polybar" FOR USE THE NEW CONFIGURATION
polybar-msg cmd restart

# CLEAN AND WRITE ON THE TERMINAL
clear
echo DEPENDENCIES INSTALLED
echo BACKUP MADE
echo CONFIGS EXPORTED
echo FONTS EXPORTED
echo APPS INSTALLED
echo EVERYTHING DONE, YOU SHOULD REBOOT NOW
