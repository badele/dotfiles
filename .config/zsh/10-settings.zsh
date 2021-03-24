#
# ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
# ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
# ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
# ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
# ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
# ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝

# ZSH
setopt no_beep				            # no beep
setopt rm_star_wait                 	# wait 10 seconds before running `rm *`
setopt hist_ignore_dups             	# ignore history duplication
setopt hist_expire_dups_first       	# remove oldest duplicate commands from the history first
setopt hist_ignore_space            	# don't save commands beginning with spaces to history
setopt append_history               	# append to the end of the history file
setopt inc_append_history           	# always be saving history (not just when the shell exits)
setopt no_flowcontrol	            	# Disable ^S and ^Q (freeze & resume flowcontro)l


# Insentive and incomplete word completion
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

# History
HISTFILE=~/.cache/.histfile
HISTSIZE=100000
SAVEHIST=100000

# FZF
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

_fzf_compgen_path() { fd --hidden --follow --exclude ".git" . "$1" } # Overide file, ex| editor ** + Tab
_fzf_compgen_dir() { fd --type d --hidden --follow --exclude ".git" . "$1" } # Overide cd command. ex| cd ** + Tab
