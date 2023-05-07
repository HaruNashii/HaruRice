# MAKE A BACKUP OF YOUR OLD I3 CONFIG ON ($HOME/.i3/backup) AND ACTIVE THE RICE ONE ON ($HOME/.i3/)
if [ -d "$HOME/.i3" ]; then
cd "$HOME/HaruRice"
sudo cp -f "./i3-config/config" "$HOME/.i3/config"
sudo chmod -R a+rw "$HOME/.i3/"
sudo chmod a+rw "$HOME/.i3/*"
else
cd "$HOME/HaruRice"
sudo mkdir "$HOME/.i3/"
sudo cp -f "./i3-config/config" "$HOME/.i3/config"
sudo chmod -R a+rw "$HOME/.i3/"
sudo chmod a+rw "$HOME/.i3/*"
fi
