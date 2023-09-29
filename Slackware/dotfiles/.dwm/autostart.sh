# Start syncthing
syncthing serve --no-browser --no-restart --logflags=0 &

# Start DBUS session bus:
[ -z "$DBUS_SESSION_BUS_ADDRESS" ] && eval $(dbus-launch --sh-syntax --exit-with-session)

# If starting dwm, load slbar. If reloading dwm, restart slbar.
slbar_load () {
    [ ! $(pidof slbar) ] && slbar || (killall slbar && slbar)
}

# Start other programs.
picom &
[ ! $(pidof conky) ] && conky &                     # Only load conky when starting dwm.
pcmanfm-qt --desktop &
dunst &
pulseaudio --daemonize; kill -44 $(pidof slbar)     # Display volume at startup as well, assuming that the volume module has assigned the update signal to 10.
slbar_load &
nm-applet &
fcitx &
hp-systray -x &
