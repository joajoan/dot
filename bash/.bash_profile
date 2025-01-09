# Load shell-agnostic profile
if [ -f ~/.shell_profile ]; then
    source ~/.shell_profile
fi

# Loading shell configuration
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Add directory shortcuts
shopt -s cdable_vars
export doc="$HOME/Documents"
export dl="$HOME/Downloads"
export git="$HOME/Git"
export dot="$git/dot"
