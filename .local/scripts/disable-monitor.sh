#!/usr/bin/env sh

# If external monitor is connected, disable primary
if (xrandr | grep "HDMI-1 connected"); then
	xrandr --output LVDS-1 --off
fi
