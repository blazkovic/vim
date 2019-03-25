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
