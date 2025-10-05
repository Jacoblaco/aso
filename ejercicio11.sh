#!/bin/bash

# Ejercicio 11
# Copiar un archivo con verificación de errores.
if [ $# -ne 2 ]; then
  echo 'Uso: $0 origen destino'
  exit 1
fi
if [ ! -f "$1" ]; then
  echo 'El origen no es un archivo válido'
  exit 1
fi
if [ -e "$2" ]; then
  echo 'El destino ya existe'
  exit 1
fi
cp "$1" "$2"
echo 'Archivo copiado correctamente'

