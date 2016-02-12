#!/bin/bash

abs_path=$(cd $(dirname $0) && pwd)

# ZSH
ln -s ${abs_path}/zsh/zshrc ~/.zshrc
ln -s ${abs_path}/zsh/zshenv ~/.zshenv

# VIM
ln -s ${abs_path}/vim ~/.vim
ln -s ${abs_path}/vim/vimrc ~/.vimrc
ln -s ${abs_path}/vim/gvimrc ~/.gvimrc

# NVIM
mkdir -p ~/config/nvim/init.vim
ln -s ${abs_path}/nvim/init.vim ~/config/nvim/init.vim

# TMUX
ln -s ${abs_path}/tmux/tmux.conf ~/.tmux.conf
