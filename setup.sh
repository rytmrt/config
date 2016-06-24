#!/bin/bash
abs_path=$(cd $(dirname $0) && pwd)
function mkln() {
    src=${1}
    dst=${2}
    if [ ! -e ${dst} ];then
        ln -s ${abs_path}/${src} ${dst}
        echo Make simbolic link \"${dst}\"
        return 0
    else
        echo \"${dst}\" is exist.
        return 1
    fi
}
function mkdir_func() {
    mkdir -p $1
    local res=$?
    if [ $res -eq 0 ];then
        eval $2
    else
        echo Failed to mkdir \"${1}\"
    fi
}


# zsh
function setup_zsh() {
    mkln zsh/zshrc ~/.zshrc
    mkln zsh/zshenv ~/.zshenv
}

# vim
function setup_vim() {
    mkln vim ~/.vim
    mkln vim/vimrc ~/.vimrc
    mkln vim/gvimrc ~/.gvimrc

    # nvim
    mkdir -p ~/config/nvim/
    mkln nvim/init.vim ~/config/nvim/init.vim
}

# tmux
function setup_tmux() {
    mkln tmux ~/.tmux
    mkln tmux/tmux.conf ~/.tmux.conf
    mkdir_func ~/.tmux/plugins "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"
}





########################################
# Setup
setup_zsh
setup_vim
setup_tmux
########################################
