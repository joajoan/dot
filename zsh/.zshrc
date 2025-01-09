# Load shell-agnostic configuration
if [ -f ~/.shellrc ]; then
    source ~/.shellrc
fi

# Setup default prompt
PROMPT='%B%F{green}%n@%m%f%b:%B%F{blue}%~%f%b$ '

# Enable globbing
setopt EXTENDED_GLOB
setopt NO_NOMATCH

# Launch Starship prompt
eval "$(starship init zsh)"
