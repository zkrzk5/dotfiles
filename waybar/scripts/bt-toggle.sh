#!/bin/bash

if systemctl is-active --quiet bluetooth.service; then
    # Bluetooth is ON → turn it OFF
    systemctl stop bluetooth.service
else
    # Bluetooth is OFF → turn it ON, then open bluetui
    systemctl start bluetooth.service
    sleep 1
    kitty -e bluetui
fi
