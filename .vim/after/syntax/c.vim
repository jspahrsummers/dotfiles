" C syntax highlighting extensions
" Justin Spahr-Summers

" Fix highlighting errors with Apple's blocks extensions to C
syntax clear cErrInParen
syn match cErrInParen display contained "[\]]\|<%\|%>"
