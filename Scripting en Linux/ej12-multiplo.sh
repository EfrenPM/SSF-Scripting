#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 12: Implementa un script llamado ej12-multiplo.sh al que se le pasen varios números como argumentos (no hay límite en la cantidad de argumentos que se le puedan indicar). Al comenzar el script se pedirá al usuario que introduzca por teclado un valor y luego el script indicará para cada argumento si es múltiplo o no de este valor.

#################################

if [ $# -lt 1 ]; then
  echo "Usa: ./ej12-multiplo.sh num1 num2 ..."
  exit 1
fi

read -p "Introduce un valor: " valor

for num in "$@"; do
  if [ $((num % valor)) -eq 0 ]; then
    echo "$num es múltiplo de $valor."
  else
    echo "$num no es múltiplo de $valor."
  fi
done

