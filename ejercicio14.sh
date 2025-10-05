#!/bin/bash

# Ejercicio 14
# Gestión de usuarios.
if [ $# -lt 4 ]; then
  echo 'Uso: $0 alta/baja nombre apellido1 apellido2 [grupo]'
  exit 1
fi
accion=$1
nombre=$2
ap1=$3
ap2=$4
grupo=$5
usuario="alu${ap1:0:2}${ap2:0:2}${nombre:0:1}"
if [ "$accion" = 'alta' ]; then
  if [ -z "$grupo" ]; then
    groupadd $usuario
    grupo=$usuario
  fi
  useradd -m -g $grupo -c "$nombre $ap1 $ap2" $usuario
  echo "Usuario $usuario creado"
elif [ "$accion" = 'baja' ]; then
  userdel -r $usuario
  echo "Usuario $usuario eliminado"
else
  echo 'Acción no válida'
fi

