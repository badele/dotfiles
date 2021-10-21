#
#  █████╗ ██╗     ██╗ █████╗ ███████╗
# ██╔══██╗██║     ██║██╔══██╗██╔════╝
# ███████║██║     ██║███████║███████╗
# ██╔══██║██║     ██║██╔══██║╚════██║
# ██║  ██║███████╗██║██║  ██║███████║
# ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝

# cat alternative
alias cat='bat --style=plain'

# ls alternative
alias l='exa'
alias la='exa -a'
alias ll='exa -lah'
alias ls='exa --color=auto'

#alias ll="ls -alh"
alias zs="zinit zstatus"
alias cdw='cd $WORK'
alias cdp='cd $PRIVATE'

# git
alias gs="git status"
alias gl="git log"
alias gd="git diff"
alias gb="git branch"
alias ga="git add"
alias gc="git commit -m"
alias gpl="git pull"
alias gph="git push"

# yadm
alias ys="yadm status"
alias yl="yadm log"
alias yd="yadm diff"
alias yb="yadm branch"
alias ya="yadm add"
alias yc="yadm commit -m"
alias ypl="yadm pull"
alias yph="yadm push"

# pass
alias ps="pass git status"
alias pl="pass git log"
alias pd="pass git diff"
alias pb="pass git branch"
alias pa="pass git add"
alias pc="pass git commit -m"
alias ppl="pass git pull"
alias pph="pass git push"


# Docker
alias de="docker exec -it"
alias ds="docker stop"
alias dps="docker ps"

# Trash
alias rm='trash-put'
alias trm='trash-put'
alias tls='trash-list'
alias tre='trash-restore'
alias tem='trash-empty'

# Cloud & co
unalias kubectl # Disable clourify for using P10K plugin
alias a=aws
alias g=gcloud
alias k=kubectl
alias h=helm

alias vim=nvim

# navi
alias navi="navi"
alias lnavi="navi --path $PRIVATE/cheats"

# Date & Time
alias clock="peaclock --config-dir ~/.config/peaclock"

alias get_i3_window_name="xprop | grep CLASS"
