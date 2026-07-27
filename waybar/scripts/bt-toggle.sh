#!/bin/bash

if systemctl is-active --quiet bluetooth.service; then
    systemctl stop bluetooth.service
else
    systemctl start bluetooth.service
    sleep 1
    kitty -e bluetui
fi
