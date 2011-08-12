let mapleader=","

filetype off

call pathogen#runtime_append_all_bundles()

syntax on
filetype indent plugin off

set nocompatible
set tabstop=4
set shiftwidth=4
set nocindent
set nosmartindent
set autoindent
set bs=indent,eol,start
set hls is ic scs
set gdefault
set ruler
set textwidth=80
set visualbell
set formatoptions=rcn1
set equalalways
set autoread
set number
set foldmethod=indent
set foldlevelstart=99
set autochdir

noremap <silent> <C-o> :FSSplitRight<CR>
noremap <silent> <C-Down>  <ESC><C-w>j
noremap <silent> <C-Up>    <ESC><C-w>k
noremap <silent> <C-Left>  <ESC><C-w>h
noremap <silent> <C-Right> <ESC><C-w>l
noremap <leader>p "0p
noremap <leader>P "0P
nnoremap <silent> <C-n> :noh<CR>
nnoremap ; :
nnoremap <Down> <C-w>j
nnoremap <Up> <C-w>k
nnoremap <Left> <C-w>h
nnoremap <Right> <C-w>l
nnoremap / /\v
nnoremap <tab> %
nnoremap <leader>w <C-w>s<C-w>k
nnoremap <leader>= <C-W>=
nnoremap <leader>e :e 
nnoremap <leader>s :%s/\v
nnoremap <leader>` :e ~/.vimrc<CR>
nnoremap <leader>_ <C-w>_
nnoremap <leader>h :noh<CR>
nnoremap <leader>H :syntax sync fromstart<CR>
nnoremap <leader>c /<<<<<<<\\|=======\\|>>>>>>><CR>
vnoremap / /\v
vnoremap <tab> %
inoremap jj <ESC>

set bg=dark
colorscheme terminal_custom
