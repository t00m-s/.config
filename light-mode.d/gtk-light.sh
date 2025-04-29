#!/usr/bin/env bash
set -euxo pipefail
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
gsettings set org.gnome.desktop.interface gtk-theme 'catppuccin-latte-peach-standard+default'
sed -i "s|gtk-theme-name=catppuccin-mocha-peach-standard+default|gtk-theme-name=catppuccin-latte-peach-standard+default|" ~/.config/gtk-3.0/settings.ini
