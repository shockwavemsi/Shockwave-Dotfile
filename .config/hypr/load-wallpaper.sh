#!/usr/bin/env bash

CONF="$HOME/.config/hypr/wallpaper.conf"

if [ -f "$CONF" ]; then
    source "$CONF"
    [ -f "$WALLPAPER" ] && swww img "$WALLPAPER"
fi

