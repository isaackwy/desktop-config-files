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

# nnn (plugins, trash, etc.)
# chmodplus is my custom plugin - it adds/removes executable file permission 
export NNN_PLUG='p:mocq;x:chmodplus'
alias nnn="NNN_TRASH=1 nnn -e -x"     # Requires trash-cli

# shell depth indicator for nnn
[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"

# cd on quit (run n instead of nnn)
n()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNVL ] && [ "${NNNVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #   NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
        . "$NNN_TMPFILE"
        rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

# fix terminal issues with ssh
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"

# sfeed
alias sfeed_update_all="sfeed_html $HOME/.sfeed/feeds/* > '$HOME/.sfeed/feeds.html' && sfeed_update"
alias sfeed_read="links $HOME/.sfeed/feeds.html"

# qt5 themes (requires lxqt-qtplugin)
export QT_QPA_PLATFORMTHEME=lxqt

# vim editor by default
export EDITOR=vim
