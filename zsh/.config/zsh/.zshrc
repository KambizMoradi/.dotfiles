append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}


directory_to_add=~/.bin
if [ -d $directory_to_add ]
then
	append_path $directory_to_add
	export PATH
fi
unset -f append_path

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $XDG_CONFIG_HOME/zsh/.p10k.zsh ]] || source $XDG_CONFIG_HOME/zsh/.p10k.zsh

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

##############################################################################
# History Configuration
##############################################################################
export HISTSIZE=100000              #How many lines of history to keep in memory
export SAVEHIST=1000000               #Number of history entries to save to disk
# export HISTTIMEFORMAT="[%F %T] "

setopt INC_APPEND_HISTORY			# Immediate append
# setopt EXTENDED_HISTORY				# Add Timestamp to history
setopt HIST_FIND_NO_DUPS			# Handling duplicate commands
setopt HIST_IGNORE_ALL_DUPS			# Handling duplicate commands
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

##############################################################################
# keybind
##############################################################################
bindkey -e
bindkey "^F" forward-word
bindkey "^B" backward-word

##############################################################################
# auto-completion
##############################################################################
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

##############################################################################
# zoxide
##############################################################################
eval "$(zoxide init zsh)"

##############################################################################
# Aliases
##############################################################################
function ca {
    clear -x
    echo -e -n $(date +"%F")" =======================================================\n"
    cal -3 -m
    echo -e "\n"
    echo -e -n $(jdate +"%F")" =======================================================\n"
    jcal -3
}

function wtr {
	lat=34.32
	lan=47.07
	curl v2.wttr.in/$lat,$lan
	curl wttr.in/$lat,$lan
}

function npfu {
	sudo pacman -Sy
	packages=$(pacman -Qu|wc -l);
	clear -x
	echo packages for update: $packages
}

function cpu_set_frequency {
	echo set spu frequency to $1 ...
	sudo cpupower frequency-set --freq $1
	cpupower frequency-info --freq
}

alias ..='cd ..'
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l --human-readable --time-style="+%F %T %:z"'
alias grep='grep --color=auto'

alias ranger='ranger --choosedir=$HOME/.cache/ranger/.rangerdir; LASTDIR=`cat $HOME/.cache/ranger/.rangerdir`; cd "$LASTDIR";'
alias d='clear -x;df --output --human-readable --exclude-type=efivarfs --exclude-type=tmpfs --exclude-type=devtmpfs | head -n 1;echo "===================================================================================";df --output --human-readable --exclude-type=efivarfs --exclude-type=tmpfs --exclude-type=devtmpfs | tail -n +2|sort;'
alias vimconfig='vim ~/.config/nvim/init.vim'
alias tree='tree -C'
alias neofetch='clear -x;neofetch --cpu_temp C'

alias cpu_high='cpu_set_frequency 4600000'
alias cpu_mid='cpu_set_frequency 2900000'
alias cpu_low='cpu_set_frequency 2800000'

alias remove='sudo pacman -Rcns'
alias resume='cd ~/Documents/Repositories/CV/DevOps;ls -1'

alias shekan='cat /etc/resolv.conf;echo "============";sudo cp /etc/resolv.conf_shekan /etc/resolv.conf;cat /etc/resolv.conf'
alias nashkan='cat /etc/resolv.conf;echo "============";sudo cp /etc/resolv.conf_router /etc/resolv.conf;cat /etc/resolv.conf'

alias dfd='clear; cd ~/Documents/Repositories/.dotfiles; ll; git status -u; ranger'

alias docker-clean='echo "==========before:" ;\
					docker images ;\
					echo "----------" ;\
					docker system df ;\
					echo "===============" ;\
					docker image prune --all --force ;\
					docker system prune --force;\
					echo "==========after:" ;\
					docker images ;\
					echo "----------" ;\
					docker system df'
alias k="kubectl"
alias h="helm"
