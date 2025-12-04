#!/bin/bash
# Cargar colores de pywal
source ~/.cache/wal/colors.sh

# Generar configuración de mako con los colores de pywal
cat > ~/.config/mako/config <<EOF
font=JetBrainsMono Nerd Font 12
background-color=$background
text-color=$foreground
border-color=$color1
border-size=2
default-timeout=5000
EOF

# Reiniciar mako para aplicar cambios
pkill mako
mako &

