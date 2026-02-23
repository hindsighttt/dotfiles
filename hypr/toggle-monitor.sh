#!/bin/bash
if hyprctl monitors | grep -q "eDP-1.*disabled"; then
    # Currently using external, switch to laptop
    hyprctl keyword monitor "eDP-1, 3840x2160@144, 0x0, 1"
    hyprctl keyword monitor "HDMI-A-1, disable"
else
    # Currently using laptop, switch to external
    hyprctl keyword monitor "HDMI-A-1, 2560x1080@200, 0x0, 1"
    hyprctl keyword monitor "eDP-1, disable"
fi
