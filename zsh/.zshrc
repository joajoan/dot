# Load shell-agnostic configuration
[ -f ~/.shellrc ] && source ~/.shellrc

# Enable color support
export TERM="xterm-256color"

# Setup default prompt
PROMPT='%B%F{green}%n@%m%f%b:%B%F{blue}%~%f%b$ '

# Enable globbing
setopt EXTENDED_GLOB
setopt NO_NOMATCH

# Configure history
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt SHARE_HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Enable completion
autoload -U compinit
compinit

# Add named directories
hash -d docs=~/Documents
hash -d dl=~/Downloads
hash -d git=~/Git

# Launch Starship prompt
eval "$(starship init zsh)"
