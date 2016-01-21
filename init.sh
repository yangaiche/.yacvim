#!/bin/bash

git clone https://github.com/powerline/fonts ~/.yacvim/font
chmod 777 ~/.yacvim/font/install.sh
~/.yacvim/font/install.sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ ! -e ~/.vimrc]
	then ln -s ~/.yacvim/.vimrc ~/.vimrc
