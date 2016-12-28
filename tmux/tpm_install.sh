#!/bin/bash
tmux_dir="${HOME}/.tmux"
script_dir=$(cd $(dirname $0);pwd)
plugin_dir=${script_dir}/plugins

if [ ! -e ${plugin_dir} ];then
    mkdir -p ${plugin_dir}
    git clone https://github.com/tmux-plugins/tpm ${plugin_dir}/tpm
fi

if [ ! -e ${tmux_dir} ];then
    ln -s ${script_dir} ${tmux_dir}
fi
