if has('python3')
  silent! python3 1
endif
syntax on
" for lazy search but affects :s so probably a bad idea
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set hlsearch
set bg=dark
set number
execute pathogen#infect()
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
silent! helptags ALL
" ALE
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
set tabstop=2 shiftwidth=2
set expandtab
