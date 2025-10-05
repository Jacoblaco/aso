#!/bin/bash

# Ejercicio 10
# Decir si un número es par o impar.
read -p 'Introduce un número: ' n
if (( n % 2 == 0 )); then
  echo 'Es par'
else
  echo 'Es impar'
fi

