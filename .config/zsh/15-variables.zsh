#
# ██╗   ██╗ █████╗ ██████╗ ██╗ █████╗ ██████╗ ██╗     ███████╗███████╗
# ██║   ██║██╔══██╗██╔══██╗██║██╔══██╗██╔══██╗██║     ██╔════╝██╔════╝
# ██║   ██║███████║██████╔╝██║███████║██████╔╝██║     █████╗  ███████╗
# ╚██╗ ██╔╝██╔══██║██╔══██╗██║██╔══██║██╔══██╗██║     ██╔══╝  ╚════██║
#  ╚████╔╝ ██║  ██║██║  ██║██║██║  ██║██████╔╝███████╗███████╗███████║
#   ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚══════╝

# Paths
export PATH=${HOME}/.local/bin:${PATH}

# Kubernetes contexts
export KUBECONFIG=$(ls -1 ~/.kube/*.yml | tr "\n" ":")

# Terminal
export TERMINAL=wezterm
export EDITOR=nvim

# Less for colors man page
export LESS="-FSRXI"

# XDG Folders (https://wiki.archlinux.org/index.php/XDG_Base_Directory#Supported)
export XDG_CONFIG_HOME=${HOME}/.config
export XDG_CACHE_HOME=${HOME}/.cache
export XDG_DATA_HOME=${HOME}/.local/share
export GNUPGHOME=${XDG_CONFIG_HOME}/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

# Taskwarrior
export TASKRC=${XDG_CONFIG_HOME}/taskwarrior/taskrc

# GPG
export SSH_AUTH_SOCK=$(gpgconf –list-dirs agent-ssh-socket)
export GPG_USERID=00F421C4C5377BA39820E13F6B95E13DE469CC5D
export GPG_BACKUP_DIR=/mnt/usb-black-disk/freefilesync/famille/bruno/home/security/gpg
export TELEPORT_USE_LOCAL_SSH_AGENT="false"

# AGE
export AGE_PUBLIC_KEY="age1xmunmxy9u93gclsc962ctcswawa8w73vqjwe0csykhwth46qpv3qun3657"
export AGE_PRIVATE_FILE="~/.age/secret-key.txt"

# Private folderss
export WORK=${HOME}/work/projects
export PRIVATE=${HOME}/private/projects
export PASSWORD_STORE_DIR=${PRIVATE}/pass
