#!/bin/bash

battery=(
  background.color=0xffbd93f9
  background.height=28
  background.corner_radius=10
  icon.padding_left=12
  label.padding_right=12
)

sketchybar --add item battery right \
           --set battery "${battery[@]}" \
           --set battery update_freq=120 script="$PLUGIN_DIR/battery.sh" \
           --subscribe battery system_woke power_source_change

