# GPG helper functions (Thanks Alienbob!):
if test -f $HOME/.gpg-agent-info && kill -0 $(cut -d: -f 2 $HOME/.gpg-agent-info) 2>/dev/null; then
  GPG_AGENT_INFO=$(cat $HOME/.gpg-agent-info)
  export GPG_AGENT_INFO
else
  eval $(gpg-agent --daemon)
  echo $GPG_AGENT_INFO > $HOME/.gpg-agent-info
fi
# END GPG helper functions

# fcitx environment variables
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# Start ssh-agent upon login
eval $(ssh-agent)

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi
