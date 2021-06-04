#
#  ██████╗ ██████╗ ██╗      ██████╗ ██████╗ ███████╗
# ██╔════╝██╔═══██╗██║     ██╔═══██╗██╔══██╗██╔════╝
# ██║     ██║   ██║██║     ██║   ██║██████╔╝███████╗
# ██║     ██║   ██║██║     ██║   ██║██╔══██╗╚════██║
# ╚██████╗╚██████╔╝███████╗╚██████╔╝██║  ██║███████║
#  ╚═════╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝



######################################
# GRC
######################################

[[ -f /etc/grc.zsh ]] && source /etc/grc.zsh

######################################
# Alias colors
######################################

alias ccat="highlight --out-format=ansi" # Color it


## Colors | https://wiki.archlinux.org/index.php/Color_output_in_console
#alias diff='diff --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'

# Grep
export GREP_COLORS="ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36"

# Less
export LESS_TERMCAP_mb=$(printf "\e[1;31m")
export LESS_TERMCAP_md=$(printf "\e[1;31m")
export LESS_TERMCAP_me=$(printf "\e[0m")
export LESS_TERMCAP_se=$(printf "\e[0m")
export LESS_TERMCAP_so=$(printf "\e[1;44;33m")
export LESS_TERMCAP_ue=$(printf "\e[0m")
export LESS_TERMCAP_us=$(printf "\e[1;32m")
