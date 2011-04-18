set -o vi

# Default editors
export SVN_EDITOR=nano
export EDITOR=vim
export VISUAL=vim

# Shortcuts
alias svnaddrm='svnadd && svnrm'
alias topcpu='top -o cpu'
alias topmem='top -o rsize'
alias ufdocgen="doxygen Documentation/Doxyfile && open Documentation/html/index.html"
alias coffeeall="find . -name '*.coffee' -exec coffee -c -l {} \;"
