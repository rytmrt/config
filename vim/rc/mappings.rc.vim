"
" Mappings
"

" Easy Normal-mode access.
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Scroll
noremap <expr> <C-b> max([winheight(0) - 2, 1]) . "\<C-u>" . (line('.') < 1         + winheight(0) ? 'H' : 'L')
noremap <expr> <C-f> max([winheight(0) - 2, 1]) . "\<C-d>" . (line('.') > line('$') - winheight(0) ? 'L' : 'H')
noremap <expr> <C-y> (line('w0') <= 1         ? 'k' : "\<C-y>")
noremap <expr> <C-e> (line('w$') >= line('$') ? 'j' : "\<C-e>")

" Clear highlight.
nnoremap <Esc><Esc> :nohlsearch<CR>:match<CR>

" [Space]: Other usefull commands "{{{
" Smart space mapping.
nnoremap [Space] <Nop>
nmap <Space> [Space]

" Git
nnoremap <silent> [Space]gs   :<C-u>Gstatus<CR>
nnoremap <silent> [Space]gl   :<C-u>Agit<CR>

"}}}


