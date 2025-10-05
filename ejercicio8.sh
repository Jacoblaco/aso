#!/bin/bash

# Ejercicio 8
# Comparar dos números.
read -p 'Número 1: ' a
read -p 'Número 2: ' b
if (( a > b )); then
  echo "$a es mayor"
elif (( b > a )); then
  echo "$b es mayor"
else
  echo 'Son iguales'
fi

