#!/usr/bin/env bash
set -euxo pipefail

# Replace colors for dark mode
sed -i 's/^frame_color = .*$/frame_color = "#89b4fa"/' ~/.config/dunst/dunstrc
sed -i 's/^separator_color = .*$/separator_color = frame/' ~/.config/dunst/dunstrc
sed -i 's/^highlight = .*$/highlight = "#89b4fa"/' ~/.config/dunst/dunstrc
sed -i 's/^background = .*$/background = "#1e1e2e"/' ~/.config/dunst/dunstrc
sed -i 's/^foreground = .*$/foreground = "#cdd6f4"/' ~/.config/dunst/dunstrc
sed -i '/\[urgency_critical\]/,/^$/ s/^frame_color = .*$/frame_color = "#fab387"/' ~/.config/dunst/dunstrc

# Restart dunst
if pgrep -x "dunst" > /dev/null; then
    killall dunst
fi
uwsm app -- dunst
