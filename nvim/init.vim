"--------------------------------------------------------------------
"   _       _ _         _
"  (_)_ __ (_) |___   _(_)_ __ ___
"  | | '_ \| | __\ \ / / | '_ ` _ \
"  | | | | | | |_ \ V /| | | | | | |
"  |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
"
" Created and maintenance by rytmrt <ryota.morita.3.8@gmail.com>
"--------------------------------------------------------------------

"terminal window
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l

" Font
set guifont=Ricty\ Regular\ for\ Powerline:h14

if filereadable(expand('~/.vim/vimrc'))
  source ~/.vim/vimrc
endif
