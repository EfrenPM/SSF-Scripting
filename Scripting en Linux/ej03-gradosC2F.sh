#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 3: Crear un script llamado ej03-gradosC2F.sh al que se le pase un argumento (c: grados Celsius) y muestre en pantalla el resultado de convertirlo a grados Fahrenheit, según la fórmula: f = c * 1.8 + 32.

#################################

if [ $# -eq 1 ]; then
  f=$(( $1 * 9 / 5 + 32 ))
  echo "$1°C son $f°F."
else
  echo "Error. Usa: ./ej03-gradosC2F.sh Celsius"
  exit 1
fi

