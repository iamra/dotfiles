# This will be sourced from `~/.profile` as well as shells rc files (e.g. `~/.bashrc`)

export DOTFILES_HOME="$HOME/.config/dotfiles"

alias gits='git status'
alias gdiff='git diff --no-index'
alias gds='git diff --no-index --color-words="[^[:space:]]|([[:alnum:]]|UTF_8_GUARD)+" --word-diff=plain'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias tmux='tmux -f "${XDG_CONFIG_HOME:-$HOME/.config}/tmux/tmux.conf"'

if [ -d "/opt/anki/bin" ] ; then
    PATH="/opt/anki/bin:$PATH"
fi

if [ -f "$DOTFILES_HOME/data/shell/rc-local.sh" ]; then
    . "$DOTFILES_HOME/data/shell/rc-local.sh"
fi
