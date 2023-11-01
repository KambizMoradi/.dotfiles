# XDG setting
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_STATE_HOME="$HOME"/.local/state

# zsh setting
export HISTFILE="$XDG_STATE_HOME"/zsh/history

# set default editor
export EDITOR=/usr/bin/nvim;

# set default visual
export VISUAL=/usr/bin/nvim;

# FZF for fzf.vim
export FZF_DEFAULT_OPTS='--reverse'

# bat theme
# export BAT_THEME="TwoDark"

# pythonrc
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"
