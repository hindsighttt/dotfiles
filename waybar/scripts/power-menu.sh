#!/bin/bash

chosen=$(echo -e "Logout\nReboot\nShutdown\nCancel" | wofi --dmenu --prompt "Power" --width 200 --height 140 --location top --xoffset -10 --yoffset 40)

case "$chosen" in
    Logout)   hyprctl dispatch exit ;;
    Reboot)   systemctl reboot ;;
    Shutdown) systemctl poweroff ;;
    *)        exit 0 ;;
esac
