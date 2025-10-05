#!/bin/bash

# Ejercicio 9
# Menú de operaciones básicas.
echo '1) Sumar'
echo '2) Restar'
echo '3) Multiplicar'
echo '4) Dividir'
read -p 'Opción: ' op
read -p 'Número 1: ' a
read -p 'Número 2: ' b
case $op in
  1) echo $((a + b)) ;;
  2) echo $((a - b)) ;;
  3) echo $((a * b)) ;;
  4) if (( b != 0 )); then echo $((a / b)); else echo 'División por cero'; fi ;;
  *) echo 'Opción inválida' ;;
esac

