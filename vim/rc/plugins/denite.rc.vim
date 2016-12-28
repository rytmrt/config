"---------------------------------------------------------------------------
" denite.nvim
"

" Using 'ripgrep'
call denite#custom#var('file_rec', 'command',
      \ ['rg', '--files', '--glob', '!.git'])
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'default_opts',
      \ ['--vimgrep', '--no-heading'])

" Using 'cpsm'
call denite#custom#source('file_rec', 'matcher', ['matcher_cpsm'])


" Others
call denite#custom#option('default', 'prompt', '>')
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

" Menu
let s:menus = {}

let s:menus.vim = { 'description': 'Edit your import vim configuration' }
let s:menus.vim.file_candidates = [
    \ ['Edit vimrc', '~/.vimrc'],
    \ ['Edit mappings.rc.vim', '~/.vim/rc/mappings.rc.vim'],
    \ ['Edit dein.toml', '~/.vim/rc/dein.toml'],
    \ ['Edit deinlazy.toml', '~/.vim/rc/deinlazy.toml'],
    \ ['Edit deineo.toml', '~/.vim/rc/deineo.toml'],
    \ ['Edit denite.rc.vim', '~/.vim/rc/plugins/denite.rc.vim'],
  \ ]
let s:menus.vim.command_candidates = [
    \ ['Reload vimrc', 'source ~/.vimrc'],
  \ ]

let s:menus.zsh = { 'description': 'Edit your import zsh configuration' }
let s:menus.zsh.file_candidates = [
    \ ['zshrc', '~/.zshrc'],
    \ ['zshenv', '~/.zshenv'],
  \ ]

call denite#custom#var('menu', 'menus', s:menus)
