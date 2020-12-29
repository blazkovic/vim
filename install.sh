sudo apt-get update && sudo apt-get -y update && sudo apt-get install -y git vim htop gitk cmake gnome-session-flashback light-themes

test -d ~/.vim && rm -rf .vim

git clone https://github.com/blazkovic/vim.git ~/.vim

cd ~/.vim

git config user.email "blazkovic"
git config user.name "blazkovic"

test -e ~/.bashrc && rm ~/.bashrc
test -e ~/.vimrc && rm ~/.vimrc
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.bashrc ~/.bashrc
test -d ~/Documents && rm -r ~/Documents
test -d ~/Downloads && rm -r ~/Downloads
test -d ~/Music && rm -r ~/Music
test -d ~/Pictures && rm -r ~/Pictures
test -d ~/Public && rm -r ~/Public
test -d ~/Videos && rm -r ~/Videos
test -d ~/Templates && rm -r ~/Templates
test -e ~/.config/gtk-3.0/gtk.css && rm ~/.config/gtk-3.0/gtk.css

ln -s ~/.vim/gtk.css ~/.config/gtk-3.0/gtk.css

echo 'file:///' > ~/.config/gtk-3.0/bookmarks

gsettings set org.gnome.gnome-flashback.desktop.icons show-home false
gsettings set org.gnome.gnome-flashback.desktop.icons show-trash false
gsettings set org.gnome.nautilus.preferences always-use-location-entry true
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.desktop.interface icon-theme ubuntu-mono-dark
gsettings set org.gnome.desktop.interface gtk-theme Ambiance
