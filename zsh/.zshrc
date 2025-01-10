# Load shell-agnostic configuration
if [ -f ~/.shellrc ]; then
    source ~/.shellrc
fi

# Enable color support
export TERM="xterm-256color"

# Setup default prompt
PROMPT='%B%F{green}%n@%m%f%b:%B%F{blue}%~%f%b$ '

# Enable globbing
setopt EXTENDED_GLOB
setopt NO_NOMATCH

# Launch Starship prompt
eval "$(starship init zsh)"
