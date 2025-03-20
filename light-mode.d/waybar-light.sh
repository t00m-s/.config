#!/usr/bin/env bash
sed -i 's|@import "mocha.css";|@import "latte.css";|' ~/.config/waybar/style.css
WAYBAR_PID=$(pidof waybar || echo "")
if [ -n "$WAYBAR_PID" ] && [ -d "/proc/$WAYBAR_PID" ]; then
	kill $WAYBAR_PID
	sleep 1
fi
uwsm app -- waybar
