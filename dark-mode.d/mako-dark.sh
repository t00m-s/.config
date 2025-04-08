#!/usr/bin/env bash
set -euxo pipefail
CONFIG="$HOME/.config/mako/config"

sed -i \
    -e 's/background-color=.*/background-color=#1e1e2e/' \
    -e 's/text-color=.*/text-color=#cdd6f4/' \
    -e 's/border-color=.*/border-color=#fab387/' \
    -e 's/progress-color=.*/progress-color=over #313244/' \
    -e '/\[urgency=high\]/!b;n;s/border-color=.*/border-color=#fab387/' \
    "$CONFIG"

# Reload mako
pkill -SIGUSR1 mako
