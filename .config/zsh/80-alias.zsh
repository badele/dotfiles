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

#alias colortest="msgcat --color=test'
alias colortest="tpal art spaceinvaders; tpal art yinyang; tpal minimat; wpg --preview"
alias vim=nvim

# Date & Time
alias clock="peaclock --config-dir ~/.config/peaclock --config ~/.config/peaclock/clock"
alias pomodoro="peaclock --config-dir ~/.config/peaclock --config ~/.config/peaclock/countdown"
alias stopwatch="peaclock --config-dir ~/.config/peaclock --config ~/.config/peaclock/stopwatch"

alias get_i3_window_name="xprop | grep CLASS"
