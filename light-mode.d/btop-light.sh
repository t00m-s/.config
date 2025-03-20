#!/usr/bin/env bash
set -euxo pipefail
sed -i 's|color_theme="~/.config/btop/themes/catppuccin_mocha.theme"|color_theme="~/.config/btop/themes/catppuccin_latte.theme"|' ~/.config/btop/btop.conf
