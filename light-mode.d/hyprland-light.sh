#!/usr/bin/env bash
set -euxo pipefail
sed -i "s|source=~/.config/hypr/themes/mocha.conf|source=~/.config/hypr/themes/latte.conf|" ~/.config/hypr/hyprland.conf
