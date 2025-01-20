#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 19: Crea un script llamado ej19-calcula_cambio.sh al que se le pase como parámetro el precio de un artículo (argumento obligatorio), luego el script debe solicitar el dinero entregado por teclado, y calcular el cambio que debe darle al cliente teniendo en cuenta que dispone de todos los billetes de euro (de 500 a 5 euros) y, para simplificar, supondremos que también hay billetes de 2 y 1 euro. PISTA: es mucho más fácil si creas un array de billetes.

#################################

if [ $# -ne 1 ]; then
  echo "Usa: ./ej19-calcula_cambio.sh precio"
  exit 1
fi

precio=$1
read -p "Introduce el dinero pagado: " pagado

if [ $pagado -lt $precio ]; then
  echo "Dinero insuficiente."
  exit 1
fi

cambio=$((pagado - precio))
echo "Cambio: $cambio euros."

billetes=(500 200 100 50 20 10 5 2 1)
for billete in "${billetes[@]}"; do
  cantidad=$((cambio / billete))
  if [ $cantidad -gt 0 ]; then
    echo "$cantidad billete(s) de $billete euro(s)"
    cambio=$((cambio % billete))
  fi
done

