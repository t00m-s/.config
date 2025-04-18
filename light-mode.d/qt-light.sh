#!/usr/bin/env sh
set -euxo pipefail
# qt5
sed -i 's|color_scheme_path=/home/tommaso/.config/qt5ct/colors/catppuccin-mocha-peach.conf|color_scheme_path=/home/tommaso/.config/qt5ct/colors/catppuccin-latte-peach.conf|' ~/.config/qt5ct/qt5ct.conf
sed -i 's|icon_theme=breeze-dark|icon_theme=breeze' ~/.config/qt5ct/qt5ct.conf
# qt6
sed -i 's|color_scheme_path=/home/tommaso/.config/qt6ct/colors/catppuccin-mocha-peach.conf|color_scheme_path=/home/tommaso/.config/qt6ct/colors/catppuccin-latte-peach.conf|' ~/.config/qt6ct/qt6ct.conf
sed -i 's|icon_theme=breeze-dark|icon_theme=breeze' ~/.config/qt6ct/qt6ct.conf
