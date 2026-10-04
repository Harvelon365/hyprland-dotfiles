#!/bin/bash

CURRENT=$(wpctl status | awk '/Sinks:/,0' | grep '\*' | awk '{print $3}' | tr -d '.' | head -1)

SPEAKERS=$(wpctl status | grep "Starship/Matisse HD Audio Controller Analog Stereo" | sed -E 's/^[^0-9]*([0-9]+)\..*/\1/' | head -1)
HEADSET=$(wpctl status | grep "Logitech G PRO X Gaming Headset Analog Stereo" | sed -E 's/^[^0-9]*([0-9]+)\..*/\1/' | head -1)

if [ -z "$HEADSET" ]; then
    echo "Headset not found"
    exit 1
fi

if [ "$CURRENT" = "$SPEAKERS" ]; then
    wpctl set-default "$HEADSET"
    echo "Switched to: Headset"
else
    wpctl set-default "$SPEAKERS"
    echo "Switched to: Speakers"
fi
