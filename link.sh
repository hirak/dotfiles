#!/bin/sh

if [ ! -d ~/bin ]
then
    mkdir ~/bin
fi

rm -f ~/.bashrc
rm -f ~/.bash_profile
rm -f ~/.screenrc
rm -f ~/.inputrc
rm -f ~/.vimrc
rm -f ~/.gitignore_global
rm -rf ~/.vim/dein
rm -f ~/.git-completion.bash
rm -f ~/.git-prompt.sh
rm -f ~/.gitconfig
rm -f ~/bin/revokescreen
rm -f ~/.ctags

BASEDIR=~/src/github.com/hirak/dotfiles
cp $BASEDIR/gitconfig ~/.gitconfig
ln -s $BASEDIR/.screenrc ~/.screenrc
ln -s $BASEDIR/revokescreen ~/bin/revokescreen
ln -s $BASEDIR/.bash_profile ~/.bash_profile
ln -s $BASEDIR/.gitignore_global ~/.gitignore_global
ln -s $BASEDIR/.inputrc ~/.inputrc
ln -s $BASEDIR/.vimrc ~/.vimrc
ln -s $BASEDIR/.ctags ~/.ctags
if [ ! -d ~/.vim ]; then
    ln -s $BASEDIR/.vim ~/.vim
fi
if [ ! -d ~/.bashrc.d ]; then
    ln -s $BASEDIR/.bashrc.d ~/.bashrc.d
fi
ln -s $BASEDIR/bashrc ~/.bashrc
ln -s $BASEDIR/.git-completion.bash ~/.git-completion.bash
ln -s $BASEDIR/.git-prompt.sh ~/.git-prompt.sh
