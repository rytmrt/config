#!/bin/bash
cd /tmp
mkdir dein_nvim_install
cd dein_nvim_install
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
cd ..
rm -rf /tmp/dein_nvim_install

