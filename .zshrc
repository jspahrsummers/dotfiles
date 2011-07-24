# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git svn vi-mode)

source $ZSH/oh-my-zsh.sh

# Default editors
export SVN_EDITOR=nano
export EDITOR=vim
export VISUAL=vim

# Shortcuts
alias svnaddrm='svnadd && svnrm'
alias topcpu='top -o cpu'
alias topmem='top -o rsize'
alias ufdocgen="doxygen Documentation/Doxyfile && open Documentation/html/index.html"

# Set up vcs_info for the command prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd () { vcs_info }

export PROMPT='%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}:%{$fg[blue]%}%B%c/%b%{$reset_color%} ${vcs_info_msg_0_}%(!.#.$) '

# Command completion options
setopt auto_list
setopt complete_aliases
setopt no_list_ambiguous

# History options
setopt append_history
setopt hist_verify

# Directory options
setopt auto_cd
setopt no_auto_pushd
setopt pushd_to_home

# Load machine-specific configuration
source $HOME/.zsh_profile
