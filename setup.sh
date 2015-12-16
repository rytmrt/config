#!/bin/bash

abs_path=$(cd $(dirname $0) && pwd)

# ZSH
ln -s ${abs_path}/zsh/zshrc ~/.zshrc
ln -s ${abs_path}/zsh/zshenv ~/.zshenv

# VIM
ln -s ${abs_path}/vim ~/.vim
ln -s ${abs_path}/vim/vimrc ~/.vimrc
