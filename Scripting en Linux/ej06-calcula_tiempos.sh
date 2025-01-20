#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 6: Crear un script llamado ej06-calcula_tiempos.sh al que se le pase un único parámetro, el número de segundos. El script devolverá a cuántos días, horas, minutos y segundos corresponden los segundos indicados.

#################################

if [ $# -eq 1 ]; then
  dias=$(( $1 / 86400 ))
  horas=$(( ($1 % 86400) / 3600 ))
  minutos=$(( ($1 % 3600) / 60 ))
  segundos=$(( $1 % 60 ))
  echo "$1 segundos = $dias días, $horas horas, $minutos minutos, $segundos segundos."
else
  echo "Error. Usa: ./ej06-calcula_tiempos.sh segundos"
  exit 1
fi

