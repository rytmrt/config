"
" Mappings
"

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

nnoremap <C-h>; :<C-u>help<Space><C-r><C-w><CR>


" search
nnoremap [search] <Nop>
nmap <Space>s [search]

nnoremap <silent> [search]n :<C-u>nohlsearch<CR><Esc>


" vimfiler
nnoremap [filer] <Nop>
nmap <Space>f [filer]

nnoremap <silent> [filer]t :<C-u>VimFilerExplorer<CR>


" vimrc
nnoremap [vimrc] <Nop>
nmap <Space>v [vimrc]

nnoremap <silent> [vimrc]m :<C-u>edit $HOME/.vim/rc/mappings.rc.vim<CR>
nnoremap <silent> [vimrc]d :<C-u>edit $HOME/.vim/rc/dein.rc.vim<CR>
nnoremap <silent> [vimrc]p :<C-u>edit $HOME/.vim/rc/plugins.rc.vim<CR>
nnoremap <silent> [vimrc]t :<C-u>edit $HOME/.vim/rc/dein.toml<CR>
nnoremap <silent> [vimrc]l :<C-u>edit $HOME/.vim/rc/dein_lazy.toml<CR>
nnoremap <silent> [vimrc]e :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> [vimrc]r :<C-u>source $MYVIMRC<CR>

if has("gui_running")
  nnoremap <silent> [vimrc]ge :<C-u>edit $MYGVIMRC<CR>
  nnoremap <silent> [vimrc]gr :<C-u>source $MYGVIMRC<CR>
endif


"Unite
nnoremap [unite] <Nop>
nmap <Space>u [unite]

nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>h


" Git
nnoremap [git] <Nop>
nmap <Space>g   [git]

nnoremap <silent> [git]s   :<C-u>Gstatus<CR>
nnoremap <silent> [git]pl   :<C-u>Gpull<CR>
nnoremap <silent> [git]ph   :<C-u>Gpush<CR>
nnoremap <silent> [git]l   :<C-u>Agit<CR>


" EasyAlign
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
