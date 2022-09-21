#
#  █████╗ ██╗     ██╗ █████╗ ███████╗
# ██╔══██╗██║     ██║██╔══██╗██╔════╝
# ███████║██║     ██║███████║███████╗
# ██╔══██║██║     ██║██╔══██║╚════██║
# ██║  ██║███████╗██║██║  ██║███████║
# ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝

# My tools
alias calc_latency="_calc_latency" ## Compute approximatively internet latency

# Tools
alias calc="eva" ## launch calc computing (eva)
alias fd="fd" ## find files alternative (fd)
alias up="up" ## pipe output (we can run linux command in realtime)
alias dig="dog A CNAME MX TXT AAAA NS" ## dig DNS resolution alternative (dog)
alias hexyl="hexyl --border none" ## hexdump alternative
alias http="http" ## curl alternative
alias br="br" ## File manager

# ZSH help
alias zkeys="cat ~/.config/zsh/90-bindkeys.zsh | grep -Eo '# \[.*' | sed 's/]/] >/g' | column -t -s \">\"" ## Show all ZSH shortcuts
alias zalias="cat ~/.config/zsh/80-alias.zsh | pcregrep -o1 -o2 '^alias (.*)=\".*?\"( ## .*)' | column -s'#' -t" ## Show all ZSH alias
alias zs="zinit zstatus"

# Disk size
alias dua="dua i" ## | Interactive disk size(dua)
alias dut="dust" ## | Show tree disk size (ordered by big file) (dust)

# SSH
alias sk="ssh -o StrictHostKeyChecking=no" ## ssh without host verification

# cat alternative
alias cat="bat --style=plain" ## cat alternative (bat)

# ls alternative
alias l="exa"
alias la="exa -a"
alias ll="exa -lah"
alias ls="exa --color=auto" ## ls alternative (exa)

# Folder
alias cdw="cd $WORK" ## goto working project folder
alias cdp="cd $PRIVATE" ## goto private project folder

# autojump
eval "$(zoxide init --no-aliases zsh)"
alias j="__zoxide_z" ## Autojump folder (zoxide)
alias ji="__zoxide_zi" ## Interactive autojump folder (zoxide)

# git
alias gs="git status" ## git status
alias gl="git log" ## git log
alias gd="git diff" ## git diff
alias gbr="git branch" ## git branch
alias gbm="git blame" ## git blame
alias ga="git add" ## git add
alias gc="git commit -m" ## git commit
alias gpl="git pull" ## git pull
alias gph="git push" ## git push

# yadm
alias ys="yadm status" ## yadm status
alias yl="yadm log" ## yadm log
alias yd="yadm diff" ## yadm diff
alias ybr="yadm branch" ## yadm branch
alias ybm="yadm blame" ## yadm blame
alias ya="yadm add" ## yadm add
alias yc="yadm commit -m" ## yadm commit
alias ypl="yadm pull" ## yadm pull
alias yph="yadm push" ## yadm push

# pass
alias pps="pass git status" ## pass status
alias pl="pass git log" ## pass log
alias pd="pass git diff" ## pass diff
alias pbr="pass git branch" ## pass branch
alias pbm="pass git blame" ## pass blame
alias pa="pass git add" ## pass add
alias pc="pass git commit -m" ## pass commit
alias ppl="pass git pull" ## pass pull
alias pph="pass git push" ## pass push


# Docker
alias dri="docker run -it" ## docker run interactive
alias dei="docker exec -it" ## docker exec interactive
alias ds="docker stop" ## docker stop container
alias dps="docker ps" ## docker ps

# Trash
alias rm="trash-put" ## alternative rm (push file to trash)
alias trm="trash-put" ## push file to trash
alias tls="trash-list" ## list trash files
alias tre="trash-restore" ## restore file from trash
alias tem="trash-empty" ## delete all files from trash

# Cloud & co
#unalias kubectl # Disable clourify for using P10K plugin
alias a="aws" ## aws alias
alias g="gcloud" ## gcloud alias
alias k="kubectl" ## kubectl alias
alias h="helm" ## helm alias

alias vim="nvim" ## alternative vim (nvim)

# navi
alias lnavi="navi --path $PRIVATE/cheats" ## Show cheat commands

# copy to clipboard
alias toclipboard="xclip -selection clipboard" ## Copy output to clipboard

# Date & Time
alias clock="peaclock --config-dir ~/.config/peaclock" ## Show terminal clock
alias get_i3_window_name="xprop | grep CLASS"
