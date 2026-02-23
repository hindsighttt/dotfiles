#!/bin/bash

get_profile() {
    powerprofilesctl get 2>/dev/null || echo "unknown"
}

if [ "$1" == "--toggle" ]; then
    current=$(get_profile)
    case "$current" in
        performance) powerprofilesctl set balanced ;;
        balanced) powerprofilesctl set power-saver ;;
        power-saver) powerprofilesctl set performance ;;
    esac
fi

profile=$(get_profile)
case "$profile" in
    performance) echo '{"text": "PERF", "class": "perf"}' ;;
    balanced) echo '{"text": "BAL", "class": "bal"}' ;;
    power-saver) echo '{"text": "SAVE", "class": "save"}' ;;
    *) echo "{\"text\": \"$profile\"}" ;;
esac
