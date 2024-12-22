#!/bin/bash

front_app=(
  icon.font="sketchybar-app-font:Regular:16.0"
  label.font="SF Pro:SemiBold:16.0"
  script="$PLUGIN_DIR/front_app.sh"
  background.color=0xff96CDFB
  background.corner_radius=8
  background.corner_radius=10
  background.height=28
  icon.padding_left=12
  label.padding_right=12
  icon.color=0xff30336b
)

sketchybar --add item front_app left \
           --set front_app "${front_app[@]}" \
           --subscribe front_app front_app_switched

