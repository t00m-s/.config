#!/usr/bin/env bash

set -euxo pipefail
# Replace colors for light mode
sed -i 's/^frame_color = .*$/frame_color = "#1e66f5"/' ~/.config/dunst/dunstrc
sed -i 's/^separator_color = .*$/separator_color = frame/' ~/.config/dunst/dunstrc
sed -i 's/^highlight = .*$/highlight = "#1e66f5"/' ~/.config/dunst/dunstrc
sed -i 's/^background = .*$/background = "#eff1f5"/' ~/.config/dunst/dunstrc
sed -i 's/^foreground = .*$/foreground = "#4c4f69"/' ~/.config/dunst/dunstrc
sed -i '/\[urgency_critical\]/,/^$/ s/^frame_color = .*$/frame_color = "#fe640b"/' ~/.config/dunst/dunstrc
# Restart dunst
if pgrep -x "dunst" >/dev/null; then
    killall dunst
fi
uwsm app -- dunst
