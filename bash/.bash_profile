if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export COLORTERM=truecolor

if [ -f "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

shopt -s cdable_vars
export git="$HOME/Git"
export dot="$git/dot"
export doc="$HOME/Documents"
export dl="$HOME/Downloads"
