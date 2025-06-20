#!/bin/bash

# Get the name of the primary monitor
# You can adjust this if you want to target a specific monitor by name
PRIMARY_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name')

if [ -z "$PRIMARY_MONITOR" ]; then
  echo "Could not detect primary monitor."
  exit 1
fi

# Get the current DPMS status of the primary monitor
CURRENT_STATUS=$(hyprctl monitors -j | jq -r ".[] | select(.name == \"$PRIMARY_MONITOR\") | .dpmsStatus")

if [ "$CURRENT_STATUS" = "true" ]; then
  # Monitor is currently on, so turn it off
  hyprctl dispatch dpms off "$PRIMARY_MONITOR"
else
  # Monitor is currently off, so turn it on
  hyprctl dispatch dpms on "$PRIMARY_MONITOR"
fi
