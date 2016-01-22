if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  end
endif

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-plug',
        \ {'dir': '~/.vim/plugged/vim-plug/autoload'}
  Plug 'junegunn/vim-easy-align'
  Plug 'vim-jp/vimdoc-ja'
  Plug 'itchyny/lightline.vim'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'Shougo/unite.vim'
  Plug 'Shougo/vimfiler.vim'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tomasr/molokai'
  Plug 'tomtom/tcomment_vim'

  plug 'digitaltoad/vim-jade', {'for': 'jade'}
  plug 'mattn/emmet-vim', {'for': ['html', 'php']}
  plug 'hail2u/vim-css3-syntax', {'for', 'css'}

call plug#end()

if filereadable(expand('~/.vim/rc/vim-plug.plugins.rc.vim'))
  source ~/.vim/rc/vim-plug.plugins.rc.vim
endif
