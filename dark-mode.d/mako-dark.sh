#!/usr/bin/env bash
set -euxo pipefail
sed -i 's|include=/home/tommaso/.config/mako/themes/catppuccin-latte|include=/home/tommaso/.config/mako/themes/catppuccin-mocha|' ~/.config/mako/config
# Reload mako
pkill -SIGUSR1 mako
