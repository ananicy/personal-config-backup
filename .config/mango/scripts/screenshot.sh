#!/usr/bin/env bash
#
DIR="$HOME/Drive/4TB Drive/Screenshot"
mkdir -p "$DIR"

FILE="$DIR/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

grim -g "$(slurp)" - | tee "$FILE" | wl-copy

notify-send "Screenshot Captured" "Saved to $FILE" -i $HOME/.config/mango/scripts/screenshot.png
