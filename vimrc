" Set compatibility to Vim only.

set nocompatible

" execute pathogen#infect()
" Helps force plug-ins to load correctly when it is turned back on below.
filetype off
  
" Turn on syntax highlighting.
syntax on
  
" For plug-ins to load correctly.
filetype plugin indent on
 
" set tabstops rtc
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" show line numbers
set nu
  
" set theme
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" tex configuration
let g:tex_flavor='latex'
set conceallevel=1
let g:tex_conceal='abdmg'

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
