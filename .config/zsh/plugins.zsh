#
# ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
# ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
# ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
# ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
# ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
# ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝

# Tips
# Bench starting ZSH shell with command `zi times`

# Powerline10k
zinit ice depth=1; zinit light romkatv/powerlevel10k
ZSH_THEME=powerlevel10k/powerlevel10k

setopt promptsubst

################################
# Plugins
################################

# AWS cli
# yay -S aws-cli
zinit ice wait lucid
zinit snippet OMZP::aws

# Show package name can be installed for using the command
zinit ice wait lucid
zinit snippet OMZP::command-not-found

# gcloud SDK
# yay -S google-cloud-sd
zinit ice wait lucid
zinit snippet OMZP::gcloud

# GPG agent
zinit ice wait lucid
zinit snippet OMZP::gpg-agent

# direnv
# yay -S direnv
zinit ice wait lucid
zinit snippet OMZP::direnv

# FZF
# yay -S fzf
zinit ice wait lucid multisrc'shell/{key-bindings,completion}.zsh'
zinit light junegunn/fzf

# # Colorize the files with cat, less (alias to ccat,cless)
# # yay -S python-pygments
# zinit ice wait lucid
# zinit snippet OMZP::colorize

# Create alias for git commands
# yay -S git
zinit ice wait lucid
zinit snippet OMZP::git

# Create alias for colorize some output executable
# yay -S grc
zinit ice wait lucid
zinit snippet OMZP::grc

# Create systemd alias sc-xxx
zinit ice wait lucid
zinit snippet OMZP::systemd

# Taskwarrior
# yay -S taskwarrior-tui
zinit ice wait lucid
zinit snippet OMZP::taskwarrior

# Prepend sudo when pressing esc
zinit ice wait lucid
zinit light hcgraf/zsh-sudo

# Tracks your most used directories, based on 'frecency'.
zinit ice wait blockf lucid
zinit light rupa/z

# Show frequencies used folders
# z / fzf (ctrl-g)
zinit ice wait lucid
zinit light andrewferrier/fzf-z

# Extract plugin (same executable for archive multiple format)
zinit ice wait lucid
zinit light thetic/extract

# autopair brackets etc
zinit ice wait'1' lucid
zinit light hlissner/zsh-autopair

# remind me of aliases
zinit ice wait lucid
zinit light djui/alias-tips

zinit ice wait lucid atload"zicompinit; zicdreplay"
zinit light zdharma/fast-syntax-highlighting

#zinit ice wait lucid
#zinit light zsh-users/zsh-autosuggestions

zinit ice wait lucid
zinit light zsh-users/zsh-history-substring-search

################################
# Completion
################################

zinit ice wait lucid blockf atpull'zinit creinstall -q .'
zinit light zsh-users/zsh-completions

zinit ice as"completion"
zinit snippet OMZ::plugins/docker/_docker

zinit ice as"completion"
zinit snippet OMZ::plugins/fd/_fd

zinit ice as"completion"
zinit snippet OMZ::plugins/golang/golang.plugin.zsh

zinit ice as"completion"
zinit snippet OMZ::plugins/kubectl/kubectl.plugin.zsh

zinit ice as"completion"
zinit snippet OMZ::plugins/ripgrep/_ripgrep

#zinit ice blockf atpull'zinit creinstall -q .'
#zinit light zsh-users/zsh-completions

# Active autocompletion
#autoload -Uz compinit
#compinit

# Must be downloaded after completion plugins
#zinit ice wait lucid
#zinit light zdharma/fast-syntax-highlighting

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
