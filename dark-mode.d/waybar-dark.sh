#!/usr/bin/env bash
set -euxo pipefail
sed -i 's|@import "latte.css";|@import "mocha.css";|' ~/.config/waybar/style.css
if pgrep -x "waybar" > /dev/null; then
    killall waybar
fi
uwsm app -- waybar
