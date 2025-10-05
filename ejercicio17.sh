#!/bin/bash

# Ejercicio 17
# Suma de números hasta introducir 0.
suma=0
while true; do
  read -p 'Número: ' n
  ((suma+=n))
  if (( n == 0 )); then
    echo "Suma total: $suma"
    break
  fi
done

