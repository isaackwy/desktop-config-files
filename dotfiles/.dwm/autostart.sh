# Start syncthing
syncthing serve --no-browser --no-restart --logflags=0 &

# Start DBUS session bus:
[ -z "$DBUS_SESSION_BUS_ADDRESS" ] && eval $(dbus-launch --sh-syntax --exit-with-session)

# If starting dwm, load slstatus. If reloading dwm, restart slstatus.
slstatus_load () {
    [ ! $(pidof slstatus) ] && slstatus || (killall slstatus && slstatus)
}

# Start other programs.
picom &
[ ! $(pidof conky) ] && conky &                     # Only load conky when starting dwm.
pcmanfm-qt --desktop &
dunst &
pulseaudio --daemonize
slstatus_load &
nm-applet &
fcitx &
hp-systray -x &
