#!/bin/bash
pkill eww
eww daemon
eww open notifications_popup
eww open control_center
~/.config/eww/scripts/notifications.py &
