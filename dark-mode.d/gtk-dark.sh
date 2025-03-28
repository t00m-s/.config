#!/usr/bin/env bash
set -euxo pipefail
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'catppuccin-mocha-peach-standard+default'
sed -i "s|gtk-theme-name=catppuccin-latte-peach-standard+default|gtk-theme-name=catppuccin-mocha-peach-standard+default|" ~/.config/gtk-3.0/settings.ini
