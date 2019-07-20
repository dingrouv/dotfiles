#!/usr/bin/env bash

DOTFILES=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# For now the dotvim directory is empty and isn't tracked by git
mkdir $DOTFILES/vim/dotvim

# Create symlinks
ln -s $DOTFILES/vim/dotvim ~/.vim
ln -s $DOTFILES/vim/vimrc ~/.vimrc
ln -s $DOTFILES/screen/screenrc ~/.screenrc
ln -s $DOTFILES/tmux/tmux.conf ~/.tmux.conf

# Install Vundle
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Vim Plugins
vim +PlugInstall +qall

