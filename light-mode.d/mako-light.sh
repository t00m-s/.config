#!/usr/bin/env bash
set -euxo pipefail
sed -i 's|include=/home/tommaso/.config/mako/themes/catppuccin-mocha|include=/home/tommaso/.config/mako/themes/catppuccin-latte|' ~/.config/mako/config
makoctl reload
