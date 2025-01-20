#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 5: Crear un script llamado ej05-calcula_segundos.sh al que se le pasen 4 parámetros (1: días, 2: horas, 3: minutos, 4: segundos). El script devolverá el total de segundos del tiempo indicado.

#################################

if [ $# -eq 4 ]; then
  total=$(( $1*86400 + $2*3600 + $3*60 + $4 ))
  echo "Total: $total segundos."
else
  echo "Faltan datos. Usa: ./ej05-calcula_segundos.sh días horas minutos segundos"
  exit 1
fi

