#!/bin/bash

# Ejercicio 6
# Pedir una palabra y añadirla a lista.txt.
read -p 'Introduce una palabra: ' palabra
echo $palabra >> lista.txt

