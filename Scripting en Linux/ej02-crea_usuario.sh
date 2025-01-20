#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 2: Crear un script llamado ej02-crea_usuario.sh al que se le pasan tres parámetros (1: nombre, 2: apellidos, 3: usuario). El script imprimirá el siguiente mensaje en pantalla:

#################################

if [ $# -eq 3 ]; then
  echo "Hola $1 $2. Tu usuario será $3."
else
  echo "Error. Usa: ./ej02-crea_usuario.sh Nombre Apellido Usuario"
  exit 1
fi

