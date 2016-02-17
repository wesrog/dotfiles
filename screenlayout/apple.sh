#!/bin/sh
xrandr --output HDMI1 --off --output VIRTUAL1 --off --output DP1 --mode 2560x1440 --pos 0x0 --rotate normal --output eDP1 --off --output VGA1 --off
herbstclient reload
