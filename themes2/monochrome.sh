#!/bin/bash
THEME="monochrome"

WALL="$HOME/Pictures/wallpapers/meow-meow-coy_MhYMLHs-unsplash.jpg"

# Set wallpaper
awww img "$WALL" \
  --transition-type any \
  --transition-fps 45

# Apply kitty theme
cp "$HOME/.config/themes/$THEME/current-theme.conf" ~/.config/kitty/current-theme.conf

# Apply waybar theme
cp "$HOME/.config/themes/$THEME/style.css" ~/.config/waybar/style.css

# Apply waybar theme
cp "$HOME/.config/themes/$THEME/config.rasi" ~/.config/rofi/config.rasi

# Reload
killall waybar 2>/dev/null
waybar >/dev/null 2>&1 &

killall -SIGUSR1 kitty 2>/dev/null

echo "$THEME" >~/.config/themes2/.current_theme

notify-send "🎨 $THEME mode activated" "Applied successfully"
