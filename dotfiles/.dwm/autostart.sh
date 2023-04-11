# Start syncthing
syncthing serve --no-browser --no-restart --logflags=0 &

# Start DBUS session bus:
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
   eval $(dbus-launch --sh-syntax --exit-with-session)
fi

# Start other programs.
picom &
conky &
pcmanfm-qt --desktop &
dunst &
pulseaudio --start; kill -44 $(pidof dwmblocks) &   # Display volume at startup as well. This assumes that the volume module has assigned the update signal to 10.
dwmblocks &
nm-applet &
fcitx &
hp-systray -x &
