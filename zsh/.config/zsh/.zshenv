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

# npm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# bat theme
# export BAT_THEME="TwoDark"

########################################################
# CLEAN HOME DIRECTORY
# pythonrc
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"

# xorg-xauth
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

# wine
export WINEPREFIX="$XDG_DATA_HOME"/wine

# vagrant
export VAGRANT_HOME="$XDG_DATA_HOME"/vagrant

# pass
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

# less
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

# julia
export JULIA_DEPOT_PATH="$XDG_DATA_HOME/julia:$JULIA_DEPOT_PATH"

# ipython
export IPYTHONDIR="${XDG_CONFIG_HOME}/ipython"

# gnupg
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

# docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

# minikube
export MINIKUBE_HOME="$XDG_DATA_HOME"/minikube

# kubectl
export KUBECONFIG="$XDG_CONFIG_HOME/kube"
export KUBECACHEDIR="$XDG_CACHE_HOME/kube"

