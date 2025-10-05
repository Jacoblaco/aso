#!/bin/bash

# Ejercicio 21
# Juego de adivinar número.
objetivo=42
while true; do
  read -p 'Adivina el número (0 para rendirse): ' n
  if (( n == 0 )); then
    echo 'Te has rendido.'
    break
  elif (( n == objetivo )); then
    echo '¡Enhorabuena!'
    break
  elif (( n < objetivo )); then
    echo 'Demasiado bajo.'
  else
    echo 'Demasiado alto.'
  fi
done

