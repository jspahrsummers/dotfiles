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
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# Default editors
export SVN_EDITOR=nano
export EDITOR=vim
export VISUAL=vim

# Flags for package installations
export CFLAGS="-Os"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j9"

# Homebrew flags
export HOMEBREW_USE_CLANG

# System-independent paths
export LUA_PATH='?;?.lua;?.luac;/usr/local/lib/?.luac;/usr/local/lib/?.lua;/usr/local/lib/lua/?.luac;/usr/local/lib/lua/?.lua'
export PATH="/usr/local/bin/scripts:/usr/local/bin:$PATH"

# Shortcuts
alias clearhist='rm "$HISTFILE"; clear'
alias svnaddrm='svnadd && svnrm'
alias topcpu='top -o cpu'
alias topmem='top -o rsize'
alias g=git
alias grb='git rebase $(git config branch.`git name-rev --name-only HEAD`.remote)'

# Set up vcs_info for the command prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd () { vcs_info }

export PROMPT='%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}:%{$fg[blue]%}%B%c/%b%{$reset_color%} ${vcs_info_msg_0_}%(!.#.$) '

# Set up vim mode indicator
export RPROMPT='[%*]'

function zle-line-init zle-keymap-select {
    export RPROMPT="${${KEYMAP/vicmd/[%*]}/main/-- INSERT --}"
	zle reset-prompt
}

function zle-line-finish {
    export RPROMPT='[%*]'
	zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
zle -N zle-line-finish

# Command completion options
setopt auto_list
setopt complete_aliases
setopt no_list_ambiguous

# History options
setopt append_history
setopt hist_verify
setopt share_history
setopt histignorealldups

# Directory options
setopt auto_cd
setopt pushd_to_home

# Globbing options
setopt extendedglob

# Load machine-specific configuration
source $HOME/.zsh_profile
