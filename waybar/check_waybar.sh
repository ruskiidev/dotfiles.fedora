#!/bin/sh
if pgrep -x waybar > /dev/null; then
    echo "Waybar is running."
else
    echo "Waybar is NOT running."
fi
