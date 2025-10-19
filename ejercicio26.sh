#!/bin/bash

ARCHIVO_SALIDA="archivos_peligrosos.txt"

echo "Buscando ficheros modificables por cualquier usuario..."

find . -type f -exec ls -l {} \; 2>/dev/null | \
grep '..w' | \
awk '{print $NF}' > "$ARCHIVO_SALIDA"

NUM_ARCHIVOS=$(wc -l < "$ARCHIVO_SALIDA")

if [ "$NUM_ARCHIVOS" -gt 0 ]; then
    echo "ALERTA! $NUM_ARCHIVOS ficheros peligrosos encontrados."
    echo "Lista guardada en el archivo '$ARCHIVO_SALIDA'."
else
    echo "No se encontraron ficheros modificables por cualquier usuario."
    rm -f "$ARCHIVO_SALIDA"
fi
