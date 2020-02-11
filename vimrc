" Set compatibility to Vim only.

set nocompatible

" execute pathogen#infect()
" Helps force plug-ins to load correctly when it is turned back on below.
filetype off
  
" Turn on syntax highlighting.
syntax on
 
" keybinding
" tabs
map <F2> :NERDTreeToggle<CR>
map <C-N> :tabnext <CR>
map <C-M> :tabprevious <CR>

" vimtex keybind
map <F9> :w <bar> VimtexCompileSS <CR>
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
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" enable GitGutter
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1

