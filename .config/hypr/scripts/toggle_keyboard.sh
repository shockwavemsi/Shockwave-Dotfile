#!/bin/bash

# Distribuciones a alternar
layouts=("es" "us")

# Archivo temporal para guardar el índice actual
state_file="$HOME/.config/hypr/scripts/.current_layout"

# Inicializar si no existe
if [ ! -f "$state_file" ]; then
    echo 0 > "$state_file"
fi

# Leer índice actual
index=$(cat "$state_file")

# Calcular siguiente índice
next_index=$(( (index + 1) % 2 ))

# Cambiar distribución con Hyprland
hyprctl keyword input:kb_layout "${layouts[$next_index]}"

# Guardar nuevo índice
echo $next_index > "$state_file"

# Notificación con mako
notify-send "Distribución de teclado" "Ahora estás usando: ${layouts[$next_index]}"

