if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH="$PATH:/opt/nvim-linux64/bin"
export COLORTERM=truecolor

source "$HOME/.cargo/env"
