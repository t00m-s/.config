#!/usr/bin/env bash
set -euxo pipefail
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'mocha'
# sed -i "s|gtk-theme-name=.*|gtk-theme-name=mocha|" ~/.config/gtk-4.0/settings.ini
