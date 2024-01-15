# Start syncthing
syncthing serve --no-browser --no-restart --logflags=0 &

# Start DBUS session bus:
[ -z "$DBUS_SESSION_BUS_ADDRESS" ] && eval $(dbus-launch --sh-syntax --exit-with-session)

# If starting dwm, load dwmblocks. If reloading dwm, restart dwmblocks.
dwmblocks_load () {
    [ ! $(pidof dwmblocks) ] && setsid -f dwmblocks || (killall dwmblocks && setsid -f dwmblocks)
}

# Start other programs.
picom &
[ ! $(pidof conky) ] && conky &                         # Only load conky when starting dwm.
pcmanfm-qt --desktop &
dunst &
pulseaudio --daemonize; kill -44 $(pidof dwmblocks)     # Display volume at startup as well, assuming that the volume module has assigned the update signal to 10.
dwmblocks_load &
[ ! $(pidof nm-applet) ] && nm-applet &                 # Only load nm-applet when starting dwm.
[ ! $(pidof fcitx) ] && fcitx &                         # Only load fcitx when starting dwm.
hp-systray -x &
pkill -15 opensnitch-ui; opensnitch-ui &
