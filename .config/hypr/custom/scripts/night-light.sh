#!/bin/bash
SHADER_FILE="$HOME/.config/hypr/shaders/night-light.glsl"

if hyprctl getoption decoration:screen_shader -j | grep -q "night-light.glsl"; then
    # Night mode is ON -> turn everything OFF
    hyprshade off
    hyprctl keyword decoration:screen_shader ""
    notify-send "Night Mode" "Disabled" -t 1000
else
    # Night mode is OFF -> turn everything ON
    hyprshade toggle grayscale
    hyprctl keyword decoration:screen_shader "$SHADER_FILE"
    notify-send "Night Mode" "Enabled (grayscale + warm + dim)" -t 1000
fi
