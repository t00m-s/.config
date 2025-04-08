#!/usr/bin/env bash
set -euxo pipefail
CONFIG="$HOME/.config/mako/config"

sed -i \
    -e 's/background-color=.*/background-color=#eff1f5/' \
    -e 's/text-color=.*/text-color=#4c4f69/' \
    -e 's/border-color=.*/border-color=#fe640b/' \
    -e 's/progress-color=.*/progress-color=over #ccd0da/' \
    -e '/\[urgency=high\]/!b;n;s/border-color=.*/border-color=#fe640b/' \
    "$CONFIG"

# Reload mako
pkill -SIGUSR1 mako
