#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 9: Crear un script llamado ej09-info_ruta.sh para mostrar información de los ficheros, directorios, etc.

#################################

if [ $# -eq 0 ]; then
  echo "Error. Usa: ./ej09-info_ruta.sh ruta"
  exit 1
fi

if [ -e "$1" ]; then
  if [ -f "$1" ]; then echo "Es un archivo."
  elif [ -d "$1" ]; then echo "Es un directorio."
  else echo "Tipo especial."
  fi
else
  echo "No existe."
  exit 1
fi

