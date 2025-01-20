#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 7: Crea un script llamado ej07-compara.sh al que se le pasen dos números como argumentos (si no se le indica alguno, lo pedirá luego por teclado). El script nos debe decir cuál de los dos números es mayor, o si son iguales.

#################################

if [ $# -ne 2 ]; then
  read -p "Primer número: " num1
  read -p "Segundo número: " num2
else
  num1=$1
  num2=$2
fi

if [ $num1 -gt $num2 ]; then
  echo "$num1 es mayor."
elif [ $num1 -lt $num2 ]; then
  echo "$num2 es mayor."
else
  echo "Son iguales."
fi

