#!/bin/sh
echo "comparing .zshrc"
colordiff -u ~/.zshrc .zshrc
echo "comparing .vimrc"
colordiff -u ~/.vimrc .vimrc
echo "comparing .bashrc"
colordiff -u ~/.bashrc .bashrc
echo "comparing .tmux.conf"
colordiff -u ~/.tmux.conf .tmux.conf
