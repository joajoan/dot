if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export COLORTERM=truecolor

if [ -f "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi
