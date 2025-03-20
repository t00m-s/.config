#!/usr/bin/env bash
sed -i 's|@import "mocha.css";|@import "latte.css";|' ~/.config/waybar/style.css

if pgrep -x "waybar" > /dev/null; then
    killall waybar
fi
uwsm app -- waybar
