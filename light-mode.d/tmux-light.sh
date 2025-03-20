#!/usr/bin/env bash
set -euxo pipefail
sed -i "s|set -g @catppuccin_flavor 'mocha'|set -g @catppuccin_flavor 'latte'|" ~/.config/tmux/tmux.conf
tmux source-file ~/.config/tmux/tmux.conf
tmux run-shell "~/.tmux/plugins/catppuccin-tmux/catppuccin.tmux"
tmux run-shell -t all "tmux source-file ~/.config/tmux/tmux.conf"
tmux run-shell -t all "~/.tmux/plugins/catppuccin-tmux/catppuccin.tmux"
