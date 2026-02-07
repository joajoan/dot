# Load shell-agnostic configuration
[ -f ~/.shell_profile ] && source ~/.shell_profile
[ -f ~/.shellrc ] && source ~/.shellrc

# Enable color support
export TERM="xterm-256color"

# Setup default prompt
PROMPT='%B%F{green}%n@%m%f%b:%B%F{blue}%~%f%b$ '

# Enable globbing
setopt EXTENDED_GLOB
setopt NO_NOMATCH

# Configure history
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# Configure history file
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Enable completion
autoload -U compinit
compinit

# Load modules
zmodload zsh/complist

# Register completion styles
zstyle ':completion:*' completer _complete _history
[[ -n "$LS_COLORS" ]] && zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Add named directories
hash -d doc=~/Documents
hash -d dl=~/Downloads
hash -d git=~/Git

# Enable VI commands
bindkey -v

# Launch Starship prompt
command -v starship &> /dev/null && eval "$(starship init zsh)"
