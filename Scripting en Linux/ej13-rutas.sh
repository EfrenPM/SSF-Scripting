#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 13: En el ejercicio 9 hicimos un script llamado ej09-info_ruta.sh que daba información de una ruta que se le indicaba por argumento. Desarrolla un script llamado ej13-rutas.sh que ejecute el script ej09-info_ruta.sh para cada elemento del directorio actual que tenga más de 4 caracteres.

#################################

for ruta in $(ls); do
  if [ ${#ruta} -gt 4 ]; then
    ./ej09-info_ruta.sh "$ruta"
  fi
done

