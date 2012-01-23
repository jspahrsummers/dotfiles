" C syntax highlighting extensions
" Justin Spahr-Summers

" Fix highlighting errors with Apple's blocks extensions to C
syn clear cErrInParen
syn match cErrInParen display contained "[\]]\|<%\|%>"

syn clear cErrInBracket
syn match cErrInBracket display contained "[)]\|<%\|%>"
