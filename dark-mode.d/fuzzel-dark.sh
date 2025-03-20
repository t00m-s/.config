#!/usr/bin/env bash
set -euxo pipefail
sed -i 's|include="~/.config/btop/themes/catppuccin_latte.theme"|include="~/.config/btop/themes/catppuccin-mocha.theme"|' ~/.config/fuzzel/fuzzel.ini
