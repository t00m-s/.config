#!/usr/bin/env bash
set -euxo pipefail
sed -i 's|include="~/.config/btop/themes/catppuccin-latte/theme.ini"|include="~/.config/btop/themes/catppuccin-mocha/theme.ini"|' ~/.config/fuzzel/fuzzel.ini
