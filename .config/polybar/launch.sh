#!/usr/bin/env bash

# Terminate running bar instances
killall -q polybar

# Launch bars
echo "---" | tee -a /tmp/polybar1.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
echo "Bars launched..."
