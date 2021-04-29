#
# ██╗   ██╗ █████╗ ██████╗ ██╗ █████╗ ██████╗ ██╗     ███████╗███████╗
# ██║   ██║██╔══██╗██╔══██╗██║██╔══██╗██╔══██╗██║     ██╔════╝██╔════╝
# ██║   ██║███████║██████╔╝██║███████║██████╔╝██║     █████╗  ███████╗
# ╚██╗ ██╔╝██╔══██║██╔══██╗██║██╔══██║██╔══██╗██║     ██╔══╝  ╚════██║
#  ╚████╔╝ ██║  ██║██║  ██║██║██║  ██║██████╔╝███████╗███████╗███████║
#   ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚══════╝

# Paths
export PATH=${HOME}/.local/bin:${PATH}

# Terminal
export TERMINAL=termite

# Less for colors man page
export LESS="-FSRXI"

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
export WORK=${HOME}/work/projects
export PRIVATE=${HOME}/private/projects
export PASSWORD_STORE_DIR=${PRIVATE}/pass
