
nnoremap ; :
nnoremap : ;

nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <C-h>; :<C-u>help<Space><C-r><C-w><CR>
nnoremap <F5> :<C-u>edit $MYVIMRC<CR>
nnoremap <F6> :<C-u>source $MYVIMRC<CR>
if has("gui_running")
  nnoremap <F7> :<C-u>edit $MYGVIMRC<CR>
  nnoremap <F8> :<C-u>source $MYGVIMRC<CR>
endif
