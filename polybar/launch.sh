#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

# Main polybar
polybar i3-mainbar  2>&1 | tee -a /tmp/polybar1.log & disown

# if there's a secondary monitor, launch polybar overthere
if [[ $(polybar -M | cut -d ':' -f 1 | grep HDMI-1) ]]; then
  polybar i3-secbar  2>&1 | tee -a /tmp/polybar1.log & disown
fi

echo "Bars launched..."
