#!/bin/sh
# server
cp bashrc ~/.bashrc
cp bash_aliases ~/.bash_aliases
cp tmux.conf ~/.tmux.conf
cp vimrc ~/.vimrc
cp gitconfig ~/.gitconfig

# clients only
#cp zshrc ~/.zshrc
#cp i3status.conf ~/.i3status.conf
#cp config ~/.config/i3/config
#cp Xdefaults ~/.Xdefaults

# install vim plug
test -e ~/.vim/plugged/ || curl -sfLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
