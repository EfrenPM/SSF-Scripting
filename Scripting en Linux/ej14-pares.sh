#!/bin/bash

################################
# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 14: Haz un script con nombre ej14-pares.sh que reciba dos números (si no los recibe, los pedirá por teclado hasta que el usuario los introduzca). El script devolverá los valores PARES situados entre esos dos números, y su CUADRADO. El usuario puede indicar primero el valor más pequeño y luego el más grande (los resultados se mostrarán en orden ascendente) o primero el valor más grande y luego el más pequeño (resultados en orden descendente).

#################################

if [ $# -ne 2 ]; then
  read -p "Primer número: " num1
  read -p "Segundo número: " num2
else
  num1=$1
  num2=$2
fi

if [ $num1 -gt $num2 ]; then
  inicio=$num2
  fin=$num1
else
  inicio=$num1
  fin=$num2
fi

for ((i=inicio; i<=fin; i++)); do
  if [ $((i % 2)) -eq 0 ]; then
    echo "El cuadrado de $i es $((i * i))"
  fi
done

