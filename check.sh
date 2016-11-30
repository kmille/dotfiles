#!/bin/sh
echo "comparing .zshrc"
colordiff -u ~/.zshrc .zshrc
echo "comparing .vimrc"
colordiff -u ~/.vimrc .vimrc
echo "comparing .bashrc"
colordiff -u ~/.bashrc .bashrc
echo "comparing .tmux.conf"
colordiff -u ~/.tmux.conf .tmux.conf
echo "comparing .i3status.conf"
colordiff -u ~/.i3status.conf .i3status.conf
echo "comparing ~/.config/i3/config"
colordiff -u ~/.config/i3/config config
