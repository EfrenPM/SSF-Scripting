#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 10: Haz un script con nombre ej10-menu_sistema.sh que muestre un menú que acepte las siguientes opciones.

#################################

echo "1. Espacio libre (%)"
echo "2. Espacio libre (tamaño)"
echo "3. Usuario actual"
echo "4. Nombre de la máquina"
echo "5. Número de usuarios"
echo "6. Espacio usado en tu carpeta"
read -p "Elige una opción: " opcion

case $opcion in
  1) df -h / | grep '/' | awk '{print $5}' ;;
  2) df -h / | grep '/' | awk '{print $4}' ;;
  3) whoami ;;
  4) hostname ;;
  5) who | wc -l ;;
  6) du -sh ~ ;;
  *) echo "Opción inválida."
esac

