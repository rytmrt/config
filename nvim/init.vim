"
"dein Scripts-----------------------------
"
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/morita.r/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

"End dein Scripts-------------------------

" MY SETTINGS
" For US Keyboard
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" nohlsearch
nnoremap <ESC><ESC> <ESC>:nohlsearch<CR>

" colorscheme
set background=dark

" Default Settings
set number
set expandtab
set sw=4 ts=4 sts=4
set autoindent
set smartindent
set clipboard+=unnamedplus
set cursorline


" Show list characters
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲


" edit vimrc asap
nnoremap <F5> :vsplit $MYVIMRC<CR>
" source right after editing vimrc
nnoremap <F4> :<C-u>source $MYVIMRC<CR>

nnoremap <C-w>_ :split<CR><C-w>w
nnoremap <C-w>\| :vsplit<CR><C-w>w


nnoremap <SPACE>t4
            \ :set ts=4 tabstop=4 shiftwidth=4<CR>
nnoremap <SPACE>t2
            \ :set ts=2 tabstop=2 shiftwidth=2<CR>

