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

# autojump
# yay -S autojump
zinit ice wait lucid
zinit snippet OMZP::autojump

# asdf
# yay -S asdf-vm
zinit ice wait lucid
zinit snippet OMZP::asdf
# See loader at bottom of this file

# AWS cli
# Use asdf
zinit ice wait lucid
zinit snippet OMZP::aws

# Show package name can be installed for using the command
zinit ice wait lucid
zinit snippet OMZP::command-not-found

# gcloud SDK
# Use asdf
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

# Create alias for colorize some output executable
# yay -S grc
zinit ice wait lucid
zinit snippet OMZP::grc

# Create systemd alias sc-xxx
zinit ice wait lucid
zinit snippet OMZP::systemd

# Taskwarrior
# yay -S task
zinit ice wait lucid
zinit snippet OMZP::taskwarrior

# Prepend sudo when pressing esc
zinit ice wait lucid
zinit light hcgraf/zsh-sudo

# autopair brackets etc
zinit ice wait'1' lucid
zinit light hlissner/zsh-autopair

# remind me of aliases
zinit ice wait lucid
zinit light djui/alias-tips

# Search substring in history
zinit ice wait lucid
zinit light zsh-users/zsh-history-substring-search

# Syntax highlighting
zinit ice wait lucid atinit'zpcompinit; zpcdreplay'
zinit light zdharma/fast-syntax-highlighting

################################
# Completion
################################

zinit ice wait lucid blockf atpull'zinit creinstall -q .'
zinit light zsh-users/zsh-completions

zinit ice as"completion"
zinit snippet OMZ::plugins/docker/_docker

zinit ice as"completion"
zinit snippet OMZ::plugins/ripgrep/_ripgrep

zinit ice as"completion"
zinit snippet OMZ::plugins/fd/_fd

zinit ice as"completion"
zinit snippet OMZ::plugins/golang/golang.plugin.zsh

zinit ice as"completion"
zinit snippet OMZ::plugins/kubectl/kubectl.plugin.zsh

zinit ice as"completion"
zinit snippet OMZ::plugins/helm/helm.plugin.zsh

zinit ice as"completion"
zinit snippet OMZ::plugins/terraform/_terraform

zinit ice as"completion"
zinit snippet OMZ::plugins/pass/_pass


# Load asdf tool
. /opt/asdf-vm/asdf.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
