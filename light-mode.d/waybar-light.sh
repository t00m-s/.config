#!/usr/bin/env bash
set -euxo pipefail
sed -i 's|@import "mocha.css";|@import "latte.css";|' ~/.config/waybar/style.css
if pgrep -x "waybar" >/dev/null; then
    pkill -SIGUSR2 waybar
else
    waybar &
fi
