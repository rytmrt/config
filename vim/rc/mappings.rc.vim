
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <C-h>; :<C-u>help<Space><C-r><C-w><CR>


nnoremap [filer] <Nop>
nmap <Space>f [filer]

nnoremap <silent> [filer]t :<C-u>VimFilerExplorer<CR>


nnoremap [vimrc] <Nop>
nmap <Space>v [vimrc]

nnoremap <silent> [vimrc]m :<C-u>edit $HOME/.vim/rc/mappings.rc.vim<CR>
nnoremap <silent> [vimrc]p :<C-u>edit $HOME/.vim/rc/vim-plug.rc.vim<CR>
nnoremap <silent> [vimrc]e :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> [vimrc]r :<C-u>source $MYVIMRC<CR>

if has("gui_running")
  nnoremap <silent> [vimrc]ge :<C-u>edit $MYGVIMRC<CR>
  nnoremap <silent> [vimrc]gr :<C-u>source $MYGVIMRC<CR>
endif


nnoremap [unite] <Nop>
nmap <Space>u [unite]

nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>h


nnoremap [git] <Nop>
nmap <Space>g   [git]

nnoremap <silent> [git]s   :<C-u>Gstatus<CR>
nnoremap <silent> [git]l   :<C-u>Agit<CR>

