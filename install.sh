apt-get update && apt-get install -y \
    git \
    vim \
    htop \
    gitk \
    cmake \
    vim-gnome \
    gnome-session-flashback \

cd ~/.vim

git config user.email "blazkovic"
git config user.name "blazkovic"

rm ~/.bashrc
rm ~/.vimrc
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.bashrc ~/.bashrc
rm -r ~/Documents
rm -r ~/Downloads
rm -r ~/Music
rm -r ~/Pictures
rm -r ~/Public
rm -r ~/Videos
rm -r ~/Templates
rm ~/examples.desktop
rm ~/.config/gtk-3.0/gtk.css
ln -s ~/.vim/gtk.css ~/.config/gtk-3.0/gtk.css

if [ -f ~/.config/user-dirs.dirs ]; then
    sed -i 's#XDG_TEMPLATES_DIR="$HOME/#XDG_TEMPLATES_DIR="$HOME/.config/.templates#g' ~/.config/user-dirs.dirs
    mkdir ~/.config/.templates
    touch ~/.config/.templates/Document
fi
echo "*** FINISHED ***"
