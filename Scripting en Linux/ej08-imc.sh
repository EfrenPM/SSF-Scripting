#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 8: Haz un script con nombre ej08-imc.sh que calcule el IMC.

#################################

if [ $# -ne 2 ]; then
  echo "Error. Usa: ./ej08-imc.sh altura_cm peso_kg"
  exit 1
fi

imc=$(( 10000 * $2 / ($1 * $1) ))
echo "IMC: $imc"
if [ $imc -lt 16 ]; then
  echo "Delgadez severa"
elif [ $imc -lt 17 ]; then
  echo "Delgadez moderada"
elif [ $imc -lt 18 ]; then
  echo "Delgadez leve"
elif [ $imc -lt 25 ]; then
  echo "Normal"
else
  echo "Sobrepeso u obesidad"
fi

