#!/usr/bin/env bash
set -euxo pipefail

gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
gsettings set org.gnome.desktop.interface gtk-theme 'latte'
sed -i "s|gtk-theme-name=.*|gtk-theme-name=latte|" ~/.config/gtk-4.0/settings.ini
