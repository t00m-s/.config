#!/usr/bin/env bash
set -euxo pipefail
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'catppuccin-mocha-peach-standard+default'
