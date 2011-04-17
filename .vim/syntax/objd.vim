" Vim syntax file
" Language:	    Objective-D
" Maintainer:	    Justin Spahr-Summers
" Last Change:	    2010-10-23

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif

" Read in D and ObjC syntax files
if version < 600
   so <sfile>:p:h/d.vim
   so <sfile>:p:h/objc.vim
else
   runtime! syntax/d.vim
   unlet b:current_syntax
   runtime! syntax/objc.vim
endif

let b:current_syntax = "objd"
