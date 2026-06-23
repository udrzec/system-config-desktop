#!/bin/bash

# Abbrechen bei Fehlern
set -e

echo "=== Starte System-Konfiguration ==="

if [ "$XDG_CURRENT_DESKTOP" = "GNOME" ]; then
    echo "-> Deaktiviere automatische GNOME-Zeitzone (Fix für gsd-datetime)..."
    gsettings set org.gnome.desktop.datetime automatic-timezone false
    echo "✓ gsettings angepasst."
fi

echo "=== Fertig! ==="
