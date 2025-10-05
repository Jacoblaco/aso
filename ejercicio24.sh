#!/bin/bash

# Ejercicio 24
# Contar ficheros y subdirectorios.
if [ -z "$1" ]; then
  echo 'Uso: $0 <directorio>'
  exit 1
fi
if [ ! -d "$1" ]; then
  echo 'No es un directorio válido'
  exit 1
fi
ficheros=$(find "$1" -mindepth 1 -maxdepth 1 -type f | wc -l)
dirs=$(find "$1" -mindepth 1 -maxdepth 1 -type d | wc -l)
echo "Ficheros: $ficheros"
echo "Subdirectorios: $dirs"

