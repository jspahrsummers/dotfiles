let mapleader=","
filetype off

call pathogen#infect()

let g:ctrlp_by_filename=1
let g:ctrlp_regexp=0
let g:ctrlp_switch_buffer="E"
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_open_new_file="t"
let g:ctrlp_open_multiple_files="tj"
let g:ctrlp_match_window_reversed=0
let g:ctrlp_prompt_mappings={ 'AcceptSelection("t")': ['<cr>'], 'AcceptSelection("e")': ['<c-t>'] }
let g:ctrlp_custom_ignore='\v(dist|build|buck-cache|buck-out)$'
let g:ctrlp_root_markers=['.buckconfig','BUCK']
let g:ctrlp_max_files=0

syntax on
filetype indent plugin off

set nocompatible
set tabstop=4
set softtabstop=2
set shiftwidth=2
set expandtab
set nocindent
set nosmartindent
set autoindent
set bs=indent,eol,start
set hls is ic scs
set gdefault
set ruler
set textwidth=80
set visualbell
set formatoptions=rco1
set equalalways
set autoread
set number
set foldmethod=indent
set foldlevelstart=99
set autochdir
set listchars=tab:→ ,nbsp:.
set path=./../**,/usr/include/**,/usr/local/include/**
set wildignore+=.*,buck-cache/*,buck-out/*
set list
set nrformats=alpha,hex
set backupcopy=auto

autocmd BufRead,BufNewFile *.m set filetype=objc
autocmd FileType c,c++,cpp,objc setlocal comments-=:// comments+=:/// comments+=:// suffixesadd+=.m,.h,.c,.pch,.mm,.cc,.cpp,.hh,.hpp
autocmd FileType swift setlocal comments-=:// comments+=:/// comments+=://

noremap <silent> <C-o> :FSSplitRight<CR>
noremap <silent> <C-Down>	 <ESC><C-w>j
noremap <silent> <C-Up>		   <ESC><C-w>k
noremap <silent> <C-Left>	 <ESC><C-w>h
noremap <silent> <C-Right> <ESC><C-w>l
noremap <leader>p "*p
noremap <leader>P "*P
noremap y "*y
nnoremap <silent> <C-n> :noh<CR>
nnoremap ; :
nnoremap <Down> <C-w>j
nnoremap <Up> <C-w>k
nnoremap <Left> <C-w>h
nnoremap <Right> <C-w>l
nnoremap <Space> @q
nnoremap / /\v
nnoremap <tab> %
nnoremap <leader>h <C-w>s<C-w>k
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>= <C-W>=
nnoremap <leader>e :e 
nnoremap <leader>s :%s/\v
nnoremap <leader>` :e ~/.vimrc<CR>
nnoremap <leader>_ <C-w>_
nnoremap <leader>n :noh<CR>
nnoremap <leader>H :syntax sync fromstart<CR>
nnoremap <leader>c /<<<<<<<\\|=======\\|>>>>>>><CR>
nnoremap <leader>d /deprecated<CR>
nnoremap <leader>t /fixme\\|todo<CR>
nnoremap <leader>j Jldw$
vnoremap / /\v
vnoremap <tab> %
vnoremap < <gv
vnoremap > >gv
vnoremap * y/<C-R>"<CR>
vnoremap # y?<C-R>"<CR>
vnoremap <leader>s :sort<CR>
inoremap jj <ESC>

set bg=dark
colorscheme terminal_custom

" From https://gist.github.com/yjsoon/3485271
function! SearchDash()
	" Some setup
	let s:browser = "/usr/bin/open"
	let s:wordUnderCursor = expand("<cword>")
 
	" Get the filetype (everything after the first ., for special cases
	" such as index.html.haml or abc.css.scss.erb)
	let s:fileType = substitute(expand("%"),"^[^.]*\.","",1)
 
	" Match it and set the searchType -- make sure these are the right shortcuts
	" in Dash! Sort by priority in the match list below if necessary, because
	" Tilt-enabled projects may have endings like .scss.erb. 
	if match(s:fileType, "js") != -1
		let s:searchType = "js:"	" can assign this to jQuery, too
	elseif match(s:fileType, "css") != -1
		let s:searchType = "css:"
	elseif match(s:fileType, "html") != -1
		let s:searchType = "html:"
	elseif match(s:fileType, "rb") != -1
		let s:searchType = "rb:"	" can assign this to Rails, too
	elseif match(s:fileType, "php") != -1
		let s:searchType = "php:"
	elseif match(s:fileType, "py") != -1
		let s:searchType = "python:"
	elseif match(s:fileType, "hs") != -1 || match(s:fileType, "lhs") != -1
		let s:searchType = "haskell:"
	elseif match(s:fileType, "m") != -1 || match(s:fileType, "h") != -1
		let s:searchType = "macosx:"
	else
		let s:searchType = ""
	endif
 
	" Run it
	let s:url = "dash://".s:searchType.s:wordUnderCursor
	let s:cmd ="silent ! " . s:browser . " " . s:url
	execute s:cmd
	redraw!
endfunction
noremap <leader>d :call SearchDash()<CR>
