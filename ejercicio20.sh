#!/bin/bash

# Ejercicio 20
# Verificar si un número es primo.
read -p 'Introduce un número: ' n
if (( n <= 1 )); then
  echo 'No es primo'
  exit
fi
for ((i=2;i<n;i++)); do
  if (( n % i == 0 )); then
    echo 'No es primo'
    exit
  fi
done
echo 'Es primo'

