#!/bin/bash

##### Adding Mission Control Space Indicators #####
# Let's add some mission control spaces:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item
# to indicate active and available mission control spaces.

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")
for i in "${!SPACE_ICONS[@]}"
do
  sid="$((i+1))"
  space=(
    space="$sid"
    icon="${SPACE_ICONS[i]}"
    icon.font="12.0"
    icon.padding_left=7
    icon.padding_right=-8
    background.color=0x90fff799
    background.corner_radius=7
    background.height=20
    label.font="sketchybar-app-font:Regular:12.0"
    icon.size=12
    label.padding_right=13
    label.y_offset=-1
    script="$PLUGIN_DIR/space.sh"
    click_script="yabai -m space --focus $sid"
    background.padding_right=3
    background.padding_left=3
  )
  sketchybar --add space space."$sid" center --set space."$sid" "${space[@]}"
done

sketchybar --add item chevron left \
           --set chevron script="$PLUGIN_DIR/space_windows.sh" \
           --subscribe chevron space_windows_change
