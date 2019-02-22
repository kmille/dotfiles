#!/bin/sh

case $SHELL in
*/zsh) 
        do_for_all
        install_zsh
   ;;
*/bash)
        do_for_all
        install_bash
   ;;
*)
   echo shell not found
esac


function do_for_all {
cp tmux.conf ~/.tmux.conf
curl -sfLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vimrc ~/.vimrc
cp gitconfig ~/.gitconfig
}


function install_bash {
# server
cp bashrc ~/.bashrc
cp bash_aliases ~/.bash_aliases

## install rg
wget https://github.com/BurntSushi/ripgrep/releases/download/0.10.0/ripgrep_0.10.0_amd64.deb
dpkg -i ripgrep_0.10.0_amd64.deb
rm ripgrep_0.10.0_amd64.deb

## install fd
wget https://github.com/sharkdp/fd/releases/download/v7.2.0/fd-musl_7.2.0_amd64.deb
dpkg -i fd-musl_7.2.0_amd64.deb
rm fd-musl_7.2.0_amd64.deb
}


# client
function install_zsh {
    cp zshrc ~/.zshrc
    cp config ~/.config/i3/config

    cp i3status.conf ~/.i3status.conf
    mkdir -p ~/.i3/py3status/
    pacman -S py3status
    pip install --user pyvbox
    cp vms.py ~/.i3/py3status/vms.py
    i3-msg restart
}
