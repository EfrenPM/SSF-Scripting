#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 18: Realiza un script llamado ej18-arrays.sh que reciba números enteros como argumentos (cualquier cantidad de argumentos). A partir de estos argumentos, el script generará un nuevo array llamado datos donde almacenará cada número, que se irá colocando al principio del array si es par, o al final si es impar. Si hubiera algún número negativo, se descartaría. Una vez que se haya completado el array de datos, se mostrará su contenido y número de elementos. Luego usaremos ese array para calcular la media de todos sus valores, así como el valor mínimo y el máximo.

#################################

datos=()

for num in "$@"; do
  if [ $num -ge 0 ]; then
    if [ $((num % 2)) -eq 0 ]; then
      datos=($num "${datos[@]}")  # Añadir al principio si es par
    else
      datos+=($num)  # Añadir al final si es impar
    fi
  fi
done

echo "Array: ${datos[@]}"
echo "Número de elementos: ${#datos[@]}"

min=${datos[0]}
max=${datos[0]}
suma=0

for num in "${datos[@]}"; do
  if [ $num -lt $min ]; then min=$num; fi
  if [ $num -gt $max ]; then max=$num; fi
  suma=$((suma + num))
done

media=$(echo "scale=2; $suma / ${#datos[@]}" | bc)
echo "Mínimo: $min, Máximo: $max, Media: $media"

