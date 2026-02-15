#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"

cd "$WALLPAPER_DIR" || exit 1

menu() {
    fzf \
    --height=95% \
    --layout=reverse \
    --border=double \
    --preview="chafa --size 44x34 {}" \
    --preview-window="top:65%"
}

SELECTED_WALL=$(ls *.jpg *.png *.jpeg *.gif 2>/dev/null | menu)
[ -z "$SELECTED_WALL" ] && exit 0

SELECTED_PATH="$WALLPAPER_DIR/$SELECTED_WALL"

swww img "$SELECTED_PATH" --transition-duration 1 --transition-fps 60 --transition-type fade
