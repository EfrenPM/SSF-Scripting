#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 20: Crea un script llamado ej20-calculadora_func.sh que es igual al ejercicio ej11-calculadora.sh, pero cada operación está implementada dentro de una función, de forma que en cada opción se llame a la función que realiza el cálculo.

#################################

# Funciones para cada operación
suma() {
  echo "Resultado: $((num1 + num2))"
}

resta() {
  echo "Resultado: $((num1 - num2))"
}

multiplicacion() {
  echo "Resultado: $((num1 * num2))"
}

division() {
  if [ $num2 -ne 0 ]; then
    echo "Resultado: $((num1 / num2))"
  else
    echo "Error: División por cero."
  fi
}

potencia() {
  echo "Resultado: $((num1 ** num2))"
}

modulo() {
  echo "Resultado: $((num1 % num2))"
}

# Comprobación de argumentos
if [ $# -ne 2 ]; then
  read -p "Introduce el primer número: " num1
  read -p "Introduce el segundo número: " num2
else
  num1=$1
  num2=$2
fi

# Menú
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"
echo "5. Potencia"
echo "6. Módulo"
read -p "Elige una operación: " opcion

# Llamada a la función correspondiente
case $opcion in
  1) suma ;;
  2) resta ;;
  3) multiplicacion ;;
  4) division ;;
  5) potencia ;;
  6) modulo ;;
  *) echo "Opción no válida." ;;
esac

