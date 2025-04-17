#!/usr/bin/env sh

# Get current brightness percentage
brightness=$(brightnessctl get)
max_brightness=$(brightnessctl max)
percent=$(echo "($brightness * 100) / $max_brightness" | bc)

notify-send -t 1000 -a 'brightness-notifier' -h int:value:$percent "Brightness: ${percent}%"
