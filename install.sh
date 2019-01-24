#!/bin/sh
cp tmux.conf ~/.tmux.conf
cp vimrc ~/.vimrc
cp gitconfig ~/.gitconfig

# server
cp bashrc ~/.bashrc
cp bash_aliases ~/.bash_aliases

# client
cp zshrc ~/.zshrc
cp config ~/.config/i3/config
cp i3status.conf ~/.i3status.conf
mkdir -p ~/.i3/py3status/
cp vms.py ~/.i3/py3status/vms.py
#pacman -S py3status
i3-msg restart

curl -sfLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
