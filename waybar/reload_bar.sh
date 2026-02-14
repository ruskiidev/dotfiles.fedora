#!/bin/sh
# Use -x to match exact process name to avoid killing this script
if pkill -SIGUSR2 -x waybar; then
    echo "Signal sent to Waybar for reload."
else
    echo "Waybar is not running, attempting to start..."
    nohup waybar >/dev/null 2>&1 &
fi
