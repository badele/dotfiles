#
# ███████╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
# ██╔════╝██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
# █████╗  ██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
# ██╔══╝  ██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
# ██║     ╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
# ╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

# broot 

# Wallpapers selector
function brw () {
 br -c ":gw;/.(png|jpg|jpeg|gif):preview_image"
}

# Filter
function brf () {
    br -h -c "/$1"
}

# kerozen ansible
function dansible () {
    IMAGE="registry.gitlab.seq.one/devops/keepcool/ansible:latest"
    docker run --net host --user "$UID:$GID" --rm -it -v ${HOME}/.ssh:/home/seqone/.ssh:ro -v ${HOME}/.ansible:/home/seqone/.ansible -v ${PWD}:/ansible:rw $IMAGE bash -c $1
}


function _calc_latency() {
    FIBER_SPEED=200000000

    if [ -z $1 ]; then
        echo "Usage: $0 <Distance Km>"
        return 1
    fi

    RESULT=$(eva "${1}*1000/${FIBER_SPEED}*1000*2") # Meters * lightspeed * 1000 ms * 2 (round trip)
    echo "$RESULT ms"
}

# navi menu
function _call_navi() {
  local selected
  if [ -n "$LBUFFER" ]; then
    if selected="$(printf "%s" "$(lnavi --print --fzf-overrides '--no-select-1' --query "${LBUFFER}" </dev/tty)")"; then
      LBUFFER="$selected"
    fi
  else
    if selected="$(printf "%s" "$(lnavi --print </dev/tty)")"; then
      LBUFFER="$selected"
    fi
  fi
  zle redisplay
}
zle -N _call_navi

# autojump
function __my_zoxide() {
  \builtin local result
  result="$(\command zoxide query -i -- "$@")" && __zoxide_cd "${result}"
  zle accept-line
}
zle -N __my_zoxide

function br {
    emulate -L zsh
    (){ broot --outcmd $1 ${@:2} && source $1 } =() $@
}
