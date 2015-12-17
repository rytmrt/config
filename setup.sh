#!/bin/bash

abs_path=$(cd $(dirname $0) && pwd)

# ZSH
ln -s ${abs_path}/zsh/zshrc ~/.zshrc
ln -s ${abs_path}/zsh/zshenv ~/.zshenv

# VIM
git submodule init
git submodule update
ln -s ${abs_path}/vim ~/.vim
ln -s ${abs_path}/vim/vimrc ~/.vimrc
ln -s ${abs_path}/vim/gvimrc ~/.gvimrc
