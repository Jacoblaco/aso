#!/bin/bash

existe() {
    local fichero="$1"
    if [ -f "$fichero" ]; then
        echo "El fichero '$fichero' existe."
        chmod 700 "$fichero" 2>/dev/null || echo "No se pudo cambiar permisos"
    else
        echo "El fichero '$fichero' NO existe."
    fi
}

if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_fichero>"
    exit 1
fi

existe "$1"
