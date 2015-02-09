#!/bin/sh

rm -f ~/.bashrc
rm -f ~/.bash_profile
rm -f ~/.screenrc
rm -f ~/.inputrc
rm -f ~/.vimrc
rm -rf ~/.vim
rm -f ~/.git-completion.bash
rm -f ~/.git-prompt.sh
rm -f ~/.gitconfig
rm -f ~/bin/revokescreen
cp ~/workspace/dotfiles/gitconfig ~/.gitconfig
ln -s ~/workspace/dotfiles/.screenrc ~/.screenrc
ln -s ~/workspace/dotfiles/revokescreen ~/bin/revokescreen
ln -s ~/workspace/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/workspace/dotfiles/.inputrc ~/.inputrc
ln -s ~/workspace/dotfiles/.vimrc ~/.vimrc
ln -s ~/workspace/dotfiles/.vim ~/.vim
ln -s ~/workspace/dotfiles/bashrc ~/.bashrc
ln -s ~/workspace/dotfiles/.git-completion.bash ~/.git-completion.bash
ln -s ~/workspace/dotfiles/.git-prompt.sh ~/.git-prompt.sh
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
