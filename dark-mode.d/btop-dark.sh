#!/usr/bin/env bash
set -euxo pipefail
sed -i 's|color_theme="~/.config/btop/themes/catppuccin_latte.theme"|color_theme="~/.config/btop/themes/catppuccin_mocha.theme"|' ~/.config/btop/btop.conf
