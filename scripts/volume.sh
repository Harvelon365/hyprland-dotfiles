#!/usr/bin/env bash
# Usage: volume.sh [+1|-1|mute]
set -euo pipefail

SINK="@DEFAULT_AUDIO_SINK@"

notify_volume() {
    if wpctl get-volume "$SINK" | grep -q 'MUTED'; then
        dunstify -t 2000 -r 9993 "Volume: MUTED"
    else
        dunstify -t 2000 -r 9993 "$(wpctl get-volume "$SINK" | grep -o '[0-9.]*' | awk '{printf "Volume: %.0f%%\n", $1*100}')"
    fi
}

case "${1:-}" in
    +1)
        wpctl set-mute "$SINK" 0
        wpctl set-volume "$SINK" 1%+
        sleep 0.05
        notify_volume
        ;;
    -1)
        wpctl set-mute "$SINK" 0
        wpctl set-volume "$SINK" 1%-
        sleep 0.05
        notify_volume
        ;;
    mute)
        wpctl set-mute "$SINK" toggle
        sleep 0.05
        notify_volume
        ;;
    *)
        echo "Usage: $0 [+1|-1|mute]" >&2
        exit 1
        ;;
esac