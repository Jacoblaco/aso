#!/bin/bash

# Ejercicio 7
# Crear un tar.gz del directorio pasado como parámetro.
if [ -z "$1" ]; then
  echo 'Uso: $0 <directorio>'
  exit 1
fi
fecha=$(date +%F)
tar -czf "${fecha}-$(basename $1).tar.gz" "$1"

