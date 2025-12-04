#!/bin/bash

while true; do

# Detectar porcentaje de batería
BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

# Notificar según nivel
if [ "$STATUS" = "Discharging" ]; then
    if [ "$BATTERY" -le 20 ] && [ "$BATTERY" -gt 10 ]; then
        notify-send -t 15000 "Batería baja" "Queda $BATTERY%"
    elif [ "$BATTERY" -le 10 ] && [ "$BATTERY" -gt 5 ]; then
        notify-send -t 15000 "Batería muy baja" "Queda $BATTERY%"
    elif [ "$BATTERY" -le 5 ]; then
        notify-send -t 15000 "Conéctate ya" "Queda $BATTERY%"
    fi
fi
sleep 300 # Comprobamos a cada minuto
done
