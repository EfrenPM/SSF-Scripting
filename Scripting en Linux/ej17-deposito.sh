#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 17: Imagina que vas a invertir tus ahorros y contratas en el banco un depósito a plazo fijo de interés compuesto. Realiza un script llamado ej17-deposito.sh que sea un simulador de este depósito. El usuario debe indicar 3 argumentos: la cantidad en euros del depósito, el %TAE del interés y la cantidad de años del depósito. Si no introduce alguno de estos valores, mostrarás un error indicando que se deben indicar 3 valores y cuáles son y el script finalizará con código de error 100. Si se reciben los datos correctos, debes mostrar para cada año cuánto dinero tiene el banco y lo que ha ido ganando con respecto a la cantidad aportada inicialmente. El interés y los euros se podrán indicar hasta con 2 decimales. Para calcular el dinero que tiene el depósito sólo tienes que multiplicar el dinero que tenía el año anterior * (1+interés/100). 

#################################

if [ $# -ne 3 ]; then
  echo "Usa: ./ej17-deposito.sh cantidad interés años"
  exit 100
fi

cantidad=$1
interes=$2
agnos=$3

echo "Depósito inicial: $cantidad euros, Interés: $interes%, Años: $años"
for ((i=1; i<=agnos; i++)); do
  cantidad=$(echo "$cantidad * (1 + $interes / 100)" | bc -l)
  ganancia=$(echo "$cantidad - $1" | bc -l)
  echo "Año $i: $cantidad euros (ganancia total: $ganancia euros)"
done

