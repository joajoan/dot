if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH="$PATH:/opt/nvim-linux64/bin"
export COLORTERM=truecolor

if [ -f  "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi

alias sudo="sudo env PATH=$PATH"
