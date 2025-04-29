#!/usr/bin/env bash
set -euxo pipefail
sed -i 's|include="~/.config/fuzzel/catppuccin-latte/theme.ini"|include="~/.config/fuzzel/catppuccin-mocha/theme.ini"|' ~/.config/fuzzel/fuzzel.ini
