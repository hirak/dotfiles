#!/bin/sh

rm -f ~/.bashrc
rm -f ~/.bash_profile
rm -f ~/.screenrc
rm -f ~/.inputrc
rm -f ~/.vimrc
rm -rf ~/.vim/bundle/neobundle.vim/
rm -f ~/.git-completion.bash
rm -f ~/.git-prompt.sh
rm -f ~/.gitconfig
rm -f ~/bin/revokescreen

BASEDIR=~/src/github.com/hirak/dotfiles
cp $BASEDIR/gitconfig ~/.gitconfig
ln -s $BASEDIR/.screenrc ~/.screenrc
ln -s $BASEDIR/revokescreen ~/bin/revokescreen
ln -s $BASEDIR/.bash_profile ~/.bash_profile
ln -s $BASEDIR/.inputrc ~/.inputrc
ln -s $BASEDIR/.vimrc ~/.vimrc
if ! [ -d ~/.vim ]; then
    ln -s $BASEDIR/.vim ~/.vim
fi
ln -s $BASEDIR/bashrc ~/.bashrc
ln -s $BASEDIR/.git-completion.bash ~/.git-completion.bash
ln -s $BASEDIR/.git-prompt.sh ~/.git-prompt.sh

if ! [ -d ~/.vim/bundle/neobundle.vim ]; then
    git clone --depth 1 git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi
