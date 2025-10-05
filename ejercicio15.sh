#!/bin/bash

# Ejercicio 15
# Tabla de multiplicar.
if [ -z "$1" ]; then
  echo 'Uso: $0 número'
  exit 1
fi
for i in {1..10}; do
  echo "$i x $1 = $((i * $1))"
done

