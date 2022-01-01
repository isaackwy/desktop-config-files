#!/bin/sh

action=$(echo -e "(1) Cancel\n(2) Logout\n(3) Restart\n(4) Shutdown" | rofi -dmenu -i)
case "$action" in
    "(1) Cancel") ;;
    "(2) Logout") killall dwm ;;
    "(3) Restart") loginctl reboot ;;
    "(4) Shutdown") loginctl poweroff ;;
esac
