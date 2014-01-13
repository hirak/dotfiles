#!/bin/sh

rm -f ~/.bashrc
rm -f ~/.bash_profile
ln -s ~/workspace/dotfiles/.screenrc ~/.screenrc
ln -s ~/workspace/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/workspace/dotfiles/.inputrc ~/.inputrc
ln -s ~/workspace/dotfiles/.vimrc ~/.vimrc
ln -s ~/workspace/dotfiles/.vim ~/.vim
ln -s ~/workspace/dotfiles/linux/.bashrc ~/.bashrc
