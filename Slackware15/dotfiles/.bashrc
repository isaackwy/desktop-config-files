# load the system-wide environment
source /etc/profile

# enable color support of ls and also add handy aliases
# From Debian
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# xclip shortcuts (xc to copy, xp to paste)
alias xc="xclip -selection clipboard"
alias xp="xclip -selection clipboard -o"

# cd on quit
lfcd () {
    tmp="$(mktemp)"
    # `command` is needed in case `lfcd` is aliased to `lf`
    command lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

# alias lf (for the cd on quit function)
alias lf="lfcd"

# fix terminal issues with ssh
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"

# sfeed
alias sfeed_update_all="sfeed_html $HOME/.sfeed/feeds/* > '$HOME/.sfeed/feeds.html' && sfeed_update"
alias sfeed_read="links $HOME/.sfeed/feeds.html"

# qt5 themes (requires lxqt-qtplugin)
export QT_QPA_PLATFORMTHEME=lxqt

# vim editor by default
export EDITOR=vim
