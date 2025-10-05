#!/bin/bash

# Ejercicio 22
# Listar contenido no recursivo e indicar tipo (fichero/directorio).
if [ -z "$1" ]; then
  echo 'Uso: $0 <directorio>'
  exit 1
fi
count=0
for item in "$1"/*; do
  if [ -f "$item" ]; then
    echo "$item - Fichero"
  elif [ -d "$item" ]; then
    echo "$item - Directorio"
  fi
  ((count++))
done
echo "Total: $count entradas"

