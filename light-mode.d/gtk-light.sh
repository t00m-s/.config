#!/usr/bin/env bash
set -euxo pipefail
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
gsettings set org.gnome.desktop.interface gtk-theme 'catppuccin-latte-peach-standard+default'
