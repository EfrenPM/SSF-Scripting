#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 4: ) Crear un script llamado ej04-dia_semana.sh al que se le pasen tres parámetros (1: día, 2: mes, 3: año). El script deberá devolver un texto diciendo: "El día de la semana de la fecha indicada (día/mes/año) fue: xxxx".

#################################

if [ $# -eq 3 ]; then
  dia=$(date -d "$3-$2-$1" '+%A')
  echo "El día fue $dia."
else
  echo "Usa: ./ej04-dia_semana.sh dia mes año"
  exit 1
fi

