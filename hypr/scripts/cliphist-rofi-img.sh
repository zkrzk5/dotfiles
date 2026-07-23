#!/usr/bin/env bash
cliphist list | while IFS= read -r entry; do
    id=$(printf '%s' "$entry" | cut -f1)
    if printf '%s' "$entry" | grep -q '\[\[ binary data'; then
        img="/tmp/cliphist-thumb-$id.png"
        [ -f "$img" ] || cliphist decode <<< "$entry" > "$img" 2>/dev/null
        printf '%s\0icon\037%s\n' "$entry" "$img"
    else
        printf '%s\n' "$entry"
    fi
done