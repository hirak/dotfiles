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
#rm -rf ~/.vim/dein/repos/github.com/Shougo/dein.vim
rm -f ~/.git-completion.bash
rm -f ~/.git-prompt.sh
rm -f ~/.gitconfig
rm -f ~/bin/revokescreen

BASEDIR=~/src/github.com/hirak/dotfiles
cp $BASEDIR/gitconfig ~/.gitconfig
ln -s $BASEDIR/.screenrc ~/.screenrc
ln -s $BASEDIR/revokescreen ~/bin/revokescreen
ln -s $BASEDIR/.bash_profile ~/.bash_profile
ln -s $BASEDIR/.gitignore_global ~/.gitignore_global
ln -s $BASEDIR/.inputrc ~/.inputrc
ln -s $BASEDIR/.vimrc ~/.vimrc
if [ ! -d ~/.vim ]; then
    ln -s $BASEDIR/.vim ~/.vim
fi
if [ ! -d ~/.bashrc.d ]; then
    ln -s $BASEDIR/.bashrc.d ~/.bashrc.d
fi
ln -s $BASEDIR/bashrc ~/.bashrc
ln -s $BASEDIR/.git-completion.bash ~/.git-completion.bash
ln -s $BASEDIR/.git-prompt.sh ~/.git-prompt.sh

if [ ! -d ~/.vim/dein/repos/github.com/Shougo/dein.vim ]
then
    git clone {git:/,~/.vim/dein/repos}/github.com/Shougo/dein.vim
    git clone {git:/,~/.vim/dein/repos}/github.com/NLKNguyen/papercolor-theme
    git clone {git:/,~/.vim/dein/repos}/github.com/Shougo/vimproc
    git clone {git:/,~/.vim/dein/repos}/github.com/Shougo/neocomplete
    git clone {git:/,~/.vim/dein/repos}/github.com/Shougo/neosnippet
    git clone {git:/,~/.vim/dein/repos}/github.com/Shougo/neosnippet-snippets
    git clone {git:/,~/.vim/dein/repos}/github.com/Shougo/unite.vim
    git clone {git:/,~/.vim/dein/repos}/github.com/ekalinin/Dockerfile.vim
    git clone {git:/,~/.vim/dein/repos}/github.com/elzr/vim-json
    git clone {git:/,~/.vim/dein/repos}/github.com/itchyny/landscape.vim
    git clone {git:/,~/.vim/dein/repos}/github.com/itchyny/lightline.vim
    git clone {git:/,~/.vim/dein/repos}/github.com/joonty/vdebug
    git clone {git:/,~/.vim/dein/repos}/github.com/kchmck/vim-coffee-script
    git clone {git:/,~/.vim/dein/repos}/github.com/mattn/emmet-vim
    git clone {git:/,~/.vim/dein/repos}/github.com/mxw/vim-jsx
    git clone {git:/,~/.vim/dein/repos}/github.com/pangloss/vim-javascript
    git clone {git:/,~/.vim/dein/repos}/github.com/thinca/vim-localrc
    git clone {git:/,~/.vim/dein/repos}/github.com/thinca/vim-quickrun
    git clone {git:/,~/.vim/dein/repos}/github.com/toyamarinyon/vim-swift
    git clone {git:/,~/.vim/dein/repos}/github.com/tyru/open-browser-github.vim
    git clone {git:/,~/.vim/dein/repos}/github.com/tyru/open-browser.vim
    git clone {git:/,~/.vim/dein/repos}/github.com/vim-jp/vim-go-extra
fi
