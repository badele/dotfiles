#
#  █████╗ ██╗     ██╗ █████╗ ███████╗
# ██╔══██╗██║     ██║██╔══██╗██╔════╝
# ███████║██║     ██║███████║███████╗
# ██╔══██║██║     ██║██╔══██║╚════██║
# ██║  ██║███████╗██║██║  ██║███████║
# ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝

alias ll="ls -alh"
alias zs="zinit zstatus"
alias cdw='cd $WORK'
alias cdp='cd $PRIVATE'

# git & yadm
alias gs="git status"
alias gl="git log"
alias gd="git diff"
alias ga="git add"
alias gc="git commit -m"
alias gpl="git pull"
alias gph="git push"

#
alias ys="yadm status"
alias yl="yadm log"
alias yd="yadm diff"
alias ya="yadm add"
alias yc="yadm commit -m"
alias ypl="yadm pull"
alias yph="yadm push"

# Trash
alias rm='trash-put'
alias trm='trash-put'
alias tls='trash-list'
alias tre='trash-restore'
alias tem='trash-empty'

# Cloud & co
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
