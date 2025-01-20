#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 15: Desarrolla un script llamado ej15-rectangulo.sh que "pinte" un rectángulo usando símbolos y además indique su área. El usuario debe indicar dos argumentos: una base y una altura, siendo los valores por defecto: base=7 y altura=4.

#################################

base=${1:-7}
altura=${2:-4}

echo "Área: $((base * altura))"
for ((i=1; i<=altura; i++)); do
  for ((j=1; j<=base; j++)); do
    echo -n "# "
  done
  echo
done

