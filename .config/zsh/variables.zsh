#
# ██╗   ██╗ █████╗ ██████╗ ██╗ █████╗ ██████╗ ██╗     ███████╗███████╗
# ██║   ██║██╔══██╗██╔══██╗██║██╔══██╗██╔══██╗██║     ██╔════╝██╔════╝
# ██║   ██║███████║██████╔╝██║███████║██████╔╝██║     █████╗  ███████╗
# ╚██╗ ██╔╝██╔══██║██╔══██╗██║██╔══██║██╔══██╗██║     ██╔══╝  ╚════██║
#  ╚████╔╝ ██║  ██║██║  ██║██║██║  ██║██████╔╝███████╗███████╗███████║
#   ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚══════╝

# Less for colors man page
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# XDG Folders (https://wiki.archlinux.org/index.php/XDG_Base_Directory#Supported)
export XDG_CONFIG_HOME=${HOME}/.config
export XDG_CACHE_HOME=${HOME}/.cache
export XDG_DATA_HOME=${HOME}/.local/share
export GNUPGHOME=${XDG_CONFIG_HOME}/gnupg

# GPG
export SSH_AUTH_SOCK=$(gpgconf –list-dirs agent-ssh-socket)
export GPG_USERID=00F421C4C5377BA39820E13F6B95E13DE469CC5D
export GPG_BACKUP_DIR=/mnt/usb-black-disk/freefilesync/famille/bruno/home/security/gpg

# Private folderss
export WORK=/home/$HOME/work/projects
export PRIVATE=/home/$HOME/private/projects
export PASSWORD_STORE_DIR=${PRIVATE}/pass
