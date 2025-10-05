#!/bin/bash

# Ejercicio 5
# Pedir dos números y mostrar su media.
read -p 'Número 1: ' a
read -p 'Número 2: ' b
media=$(( (a + b) / 2 ))
echo "La media es: $media"

