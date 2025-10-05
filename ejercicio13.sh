#!/bin/bash

# Ejercicio 13
# AGENDA simple con menú.
archivo='lista.txt'
while true; do
  echo '1) Añadir'
  echo '2) Buscar'
  echo '3) Listar'
  echo '4) Ordenar'
  echo '5) Borrar'
  echo '6) Salir'
  read -p 'Opción: ' op
  case $op in
    1)
      read -p 'Nombre: ' nom
      read -p 'Dirección: ' dir
      read -p 'Teléfono: ' tel
      echo "$nom,$dir,$tel" >> $archivo ;;
    2)
      read -p 'Buscar: ' bus
      grep -i $bus $archivo ;;
    3)
      cat $archivo ;;
    4)
      sort $archivo ;;
    5)
      rm -f $archivo ;;
    6)
      break ;;
    *)
      echo 'Opción inválida' ;;
  esac
done

