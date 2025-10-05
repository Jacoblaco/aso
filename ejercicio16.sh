#!/bin/bash

# Ejercicio 16
# Suma del 1 al 1000 con tres bucles.

# FOR
suma=0
for ((i=1;i<=1000;i++)); do
  ((suma+=i))
done
echo "For: $suma"

# WHILE
i=1
suma=0
while ((i<=1000)); do
  ((suma+=i))
  ((i++))
done
echo "While: $suma"

# UNTIL
i=1
suma=0
until ((i>1000)); do
  ((suma+=i))
  ((i++))
done
echo "Until: $suma"

