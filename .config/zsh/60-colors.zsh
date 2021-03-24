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
#alias diff='diff --color=always'
alias ls='ls --color=always'
#alias grep='grep --color=always'
#alias fgrep='fgrep --color=always'
#alias egrep='egrep --color=always'
alias ip='ip -color=always'

# Less
export LESS_TERMCAP_mb=$(printf "\e[1;31m")
export LESS_TERMCAP_md=$(printf "\e[1;31m")
export LESS_TERMCAP_me=$(printf "\e[0m")
export LESS_TERMCAP_se=$(printf "\e[0m")
export LESS_TERMCAP_so=$(printf "\e[1;44;33m")
export LESS_TERMCAP_ue=$(printf "\e[0m")
export LESS_TERMCAP_us=$(printf "\e[1;32m")
