#!/bin/bash

# Ejercicio 23
# Detectar tipo detallado en /dev.
dir=${1:-/dev}
for item in "$dir"/*; do
  if [ -L "$item" ]; then
    tipo='Enlace simbólico'
  elif [ -b "$item" ]; then
    tipo='Bloque'
  elif [ -c "$item" ]; then
    tipo='Caracter'
  elif [ -f "$item" ]; then
    tipo='Fichero'
  elif [ -d "$item" ]; then
    tipo='Directorio'
  else
    tipo='Otro'
  fi
  echo "$item - $tipo"
done

