" Vim filetype plugin file
" Language:	Objective-D
" Maintainer:	Justin Spahr-Summers
" Last Change:	2010-10-23

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Behaves like Objective-C and D
runtime! ftplugin/objc.vim ftplugin/objc_*.vim ftplugin/objc/*.vim ftplugin/d.vim ftplugin/d_*.vim ftplugin/d/*.vim
