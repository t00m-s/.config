#!/usr/bin/env bash
set -euxo pipefail
sed -i 's|@import "latte.css";|@import "mocha.css";|' ~/.config/waybar/style.css
if pgrep -x "waybar" >/dev/null; then
    pkill -USR1 waybar || {
        # Fallback to restart if reload isn't supported
        killall waybar
        sleep 0.5
        uwsm app -- waybar &
    }
fi
