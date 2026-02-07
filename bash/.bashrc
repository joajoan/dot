# Ensure interactive shell
case $- in
    *i*) ;;
      *) return;;
esac

# Configure history
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Adapt window size
shopt -s checkwinsize

# Enable globstar expansion
shopt -s globstar

# Set lesspipe for non-text files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set chroot prompt
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Configure prompt
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt

# Set xterm title
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1";;
    *)
        ;;
esac

# Set ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Enable programmable completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
  fi
fi

# Load shell-agnostic configuration
[ -f ~/.shell_profile ] && source ~/.shell_profile
[ -f ~/.shellrc ] && source ~/.shellrc

# Enable NVM Bash completion
[ -s "$HOME/.nvm/bash_completion" ] && source "$HOME/.nvm/bash_completion"

# Launch Starship prompt
eval "$(starship init bash)"
