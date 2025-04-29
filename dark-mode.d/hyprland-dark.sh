#!/usr/bin/env bash
set -euxo pipefail
sed -i "s|source=~/.config/hypr/themes/latte.conf|source=~/.config/hypr/themes/mocha.conf|" ~/.config/hypr/hyprland.conf
