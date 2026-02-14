#!/bin/sh
if pkill -SIGUSR2 waybar; then
    echo "Reloaded Waybar configuration"
else
    echo "Waybar is not running, starting it..."
    nohup waybar >/dev/null 2>&1 &
fi
