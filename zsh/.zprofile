# Loading shell-agnostic profile
if [ -f ~/.shell_profile ]; then
    source ~/.shell_profile
fi

# Loading shell configuration
if [ -f  ~/.zshrc ]; then
    source ~/.zshrc
fi
