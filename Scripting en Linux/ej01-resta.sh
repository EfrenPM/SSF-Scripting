#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 1: Crear un script llamado ej01-resta.sh al que le pasemos dos argumentos y nos devuelva la resta.

#################################

if [ $# -eq 2 ]; then
  resultado=$(( $1 - $2 ))
else
  echo "Faltan números. Intenta así: ./ej01-resta.sh 10 5"
  exit 1
fi
echo "Resultado: $resultado"

