#
#  █████╗ ██╗     ██╗ █████╗ ███████╗
# ██╔══██╗██║     ██║██╔══██╗██╔════╝
# ███████║██║     ██║███████║███████╗
# ██╔══██║██║     ██║██╔══██║╚════██║
# ██║  ██║███████╗██║██║  ██║███████║
# ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝

alias ll="ls -alh"
alias gs="git status"
alias gp="git push"
alias zs="zinit zstatus"
alias cdw='cd $WORK'
alias cdp='cd $PRIVATE'

# Trash
alias rm='echo "use trash-put instead, if you would like use rm, use \\ rm"; false'
alias trm='trash-put'
alias tls='trash-list'
alias tre='trash-restore'
alias tem='trash-empty'

# Cloud & co
alias a=aws
alias g=gcloud
alias k=kubectl
alias h=helm

# alias colorpal="wpg --preview"
# alias colorpal="msgcat --color=test"
alias colortest='cat $HOME/.config/color_palete/colors_palete.ansi'

alias vim=nvim

# Date & Time
alias clock="peaclock --config-dir ~/.config/peaclock --config ~/.config/peaclock/clock"
alias pomodoro="peaclock --config-dir ~/.config/peaclock --config ~/.config/peaclock/countdown"
alias stopwatch="peaclock --config-dir ~/.config/peaclock --config ~/.config/peaclock/stopwatch"

alias get_i3_window_name="xprop | grep CLASS"
