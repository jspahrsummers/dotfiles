" Light-on-dark GUI color scheme
" By Justin Spahr-Summers

set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "gui_custom"  

hi Normal		guifg=#000000 guibg=#FFFFFF  
hi NonText		guifg=#0000FF

hi Visual		guifg=NONE guibg=#B5D5FF gui=none
hi Cursor		guifg=NONE guibg=#FF6666 gui=none
hi iCursor		guifg=NONE guibg=#000000 gui=none
hi IncSearch	guibg=NONE guifg=#FF6666 gui=REVERSE

hi Function     guifg=#003369

hi Constant		guifg=#0000FF
hi SpecialKey	guifg=#0000FF

hi String       guifg=#760F15
hi Special		guifg=#760F15 gui=bold

hi Preproc		guifg=#683821
hi Comment		guifg=#236E25 gui=italic
hi Todo		    guifg=#236E25 gui=bold

hi Statement	guifg=#881350 gui=bold
hi Type			guifg=#881350 gui=bold
hi StorageClass guifg=#881350 gui=bold
hi Conditional  guifg=#881350 gui=bold

hi LineNr		guifg=#666666 guibg=#EEEEEE
hi SignColumn	guifg=#666666 guibg=#EEEEEE
hi VertSplit	guifg=#666666 guibg=#CCCCCC gui=none
hi StatusLine	guifg=#000000 guibg=#CCCCCC gui=none
hi StatusLineNC	guifg=#000000 guibg=#CCCCCC gui=none

hi Search		guifg=#000000 guibg=#FFFF00
hi MatchParen	guibg=NONE guifg=#B5D5FF gui=REVERSE

hi userLabel	guifg=#6C0540

" Specific to Objective-C
hi objcKeyForMethodParam	guifg=#000000

" vim-gitgutter
hi lineAdded    guifg=#00CC00 guibg=#EEEEEE
hi lineModified guifg=#0000FF guibg=#EEEEEE
hi lineRemoved  guifg=#FF0000 guibg=#EEEEEE
