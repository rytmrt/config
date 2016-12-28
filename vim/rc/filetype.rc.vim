"
" Filetype
"
filetype plugin indent on

augroup my_filetypes
  autocmd!
  autocmd BufRead,BufNewFile *.cs setfiletype cs
augroup END
