#!/usr/bin/env bash
current="$(powerprofilesctl get)"

if [[ "$1" == "--cycle" ]]; then
    case "$current" in
        performance) powerprofilesctl set balanced ;;
        balanced)    powerprofilesctl set power-saver ;;
        power-saver) powerprofilesctl set performance ;;
        *)           powerprofilesctl set balanced ;;
    esac
    exit 0
fi

case "$current" in
    performance) icon=$'\uf0e7'; text="Performance"; class="performance" ;;
    balanced)    icon=$'\uf24e'; text="Balanced"; class="balanced" ;;
    power-saver) icon=$'\uf06c'; text="Power Saver"; class="power-saver" ;;
    *)           icon=$'\uf128'; text="Unknown"; class="unknown" ;;
esac

printf '{"text":"%s","class":"%s","tooltip":"Power profile: %s\\nClick to switch"}\n' "$icon" "$class" "$text"
