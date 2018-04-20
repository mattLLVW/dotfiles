#!/bin/sh
xrandr --output HDMI-1 --off --output DP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output eDP-1 --primary --mode 1920x1080 --pos 968x1080 --rotate normal --output HDMI-2 --mode 1920x1080 --pos 1920x0 --rotate normal
i3-msg "workspace 1 output eDP-1"
#i3-msg "workspace 1, move workspace to output eDP-1"
i3-msg "workspace 3 output HDMI-2"
i3-msg "workspace 2 output DP-1"
