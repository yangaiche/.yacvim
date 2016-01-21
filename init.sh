#!/bin/bash
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

#git clone https://github.com/powerline/fonts ~/.yacvim/font
#chmod 777 ~/.yacvim/font/install.sh
#~/.yacvim/font/install.sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ ! -e ~/.vimrc ];
	then ln -s ~/.yacvim/.vimrc ~/.vimrc
fi
