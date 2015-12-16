"================================================"
" Sample:
"if neobundle#tap('')
"endif
"================================================"

if neobundle#tap('lightline.vim') "{{{

  let g:lightline = {
        \ 'colorscheme': 'landscape',
        \ 'mode_map': { 'c': 'NORMAL' },
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
        \ },
        \ 'component_function': {
        \   'modified': 'MyModified',
        \   'readonly': 'MyReadonly',
        \   'fugitive': 'MyFugitive',
        \   'filename': 'MyFilename',
        \   'fileformat': 'MyFileformat',
        \   'filetype': 'MyFiletype',
        \   'fileencoding': 'MyFileencoding',
        \   'mode': 'MyMode',
        \ },
        \ 'separator': { 'left': '⮀', 'right': '⮂' },
        \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
        \ }

  function! MyModified()
    return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
  endfunction

  function! MyReadonly()
    return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
  endfunction

  function! MyFilename()
    return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
          \ (&ft == 'vimfiler' ? vimfiler#get_status_string() : 
          \  &ft == 'unite' ? unite#get_status_string() : 
          \  &ft == 'vimshell' ? vimshell#get_status_string() :
          \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
          \ ('' != MyModified() ? ' ' . MyModified() : '')
  endfunction

  function! MyFugitive()
    if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
      let _ = fugitive#head()
      return strlen(_) ? '⭠ '._ : ''
    endif
    return ''
  endfunction

  function! MyFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
  endfunction

  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
  endfunction

  function! MyFileencoding()
    return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
  endfunction

  function! MyMode()
    return winwidth(0) > 60 ? lightline#mode() : ''
  endfunction

  call neobundle#untap()
endif "}}}


if neobundle#tap('vimfiler.vim')
  let g:vimfiler_safe_mode_by_default = 0
  let g:vimfiler_as_default_explorer = 1
  noremap <F2> :VimFilerExplorer<CR><ESC>
endif


if neobundle#tap('molokai')
  colorscheme molokai
endif

if neobundle#tap('vim-indent-guides')
  if has('gui') 
    let g:indent_guides_enable_on_vim_startup=1
    let g:indent_guides_guide_size = 1
  else
    let g:indent_guides_auto_colors=0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=235
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=240
    let g:indent_guides_enable_on_vim_startup=1
    let g:indent_guides_start_level=2
    let g:indent_guides_guide_size=1
  endif
endif


if neobundle#tap('vim-fugitive')
  noremap <C-g>s :Gstatus<CR>
  noremap <C-g>d :Gdiff<CR>
endif


if neobundle#tap('vim-easy-align')
  " ヴィジュアルモードで選択し，easy-align 呼んで整形．(e.g. vip<Enter>)
  vnoremap <Enter> <Plug>(EasyAlign)
  "nore easy-align を呼んだ上で，移動したりテキストオブジェクトを指定して整形．(e.g. gaip)
  nnoremap ga <Plug>(EasyAlign)
endif
