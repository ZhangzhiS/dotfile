#!/bin/bash

clock=(
  background.color=0xffABE9B3
  background.corner_radius=10
  background.height=28
  icon.padding_left=12
  label.padding_right=12
)

sketchybar --add item clock right \
           --set clock "${clock[@]}" \
           --set clock update_freq=10 icon=􀐫  script="$PLUGIN_DIR/clock.sh"
