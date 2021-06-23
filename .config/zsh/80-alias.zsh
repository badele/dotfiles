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
alias gd="git diff"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
#
alias ys="yadm status"
alias yd="yadm diff"
alias ya="yadm add"
alias yc="yadm commit -m"
alias yp="yadm push"

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

# Date & Time
alias clock="peaclock --config-dir ~/.config/peaclock --config ~/.config/peaclock/clock"
alias pomodoro="peaclock --config-dir ~/.config/peaclock --config ~/.config/peaclock/countdown"
alias stopwatch="peaclock --config-dir ~/.config/peaclock --config ~/.config/peaclock/stopwatch"

alias get_i3_window_name="xprop | grep CLASS"
