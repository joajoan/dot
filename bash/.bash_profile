# Load shell-agnostic profile
[ -f ~/.shell_profile ] && source ~/.shell_profile

# Loading shell configuration
[ -f ~/.bashrc ] && source ~/.bashrc

# Add directory shortcuts
shopt -s cdable_vars
export doc="$HOME/Documents"
export dl="$HOME/Downloads"
export git="$HOME/Git"
export dot="$git/dot"
