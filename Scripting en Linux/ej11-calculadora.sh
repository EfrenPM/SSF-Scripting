#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 11: Crea un script llamado ej11-calculadora.sh que acepte dos números como argumento (si no se introduce alguno de ellos, se pedirá por teclado) y que luego muestre un menú para realizar 6 operaciones ("suma", "resta", "multiplica", "divide" y dos más que quieras añadir) entre estos dos números, mostrando el resultado final tras elegir la operación. Si se indica una opción incorrecta, se mostrará un error.

#################################

if [ $# -ne 2 ]; then
  read -p "Primer número: " num1
  read -p "Segundo número: " num2
else
  num1=$1
  num2=$2
fi

echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"
read -p "Elige operación: " op

case $op in
  1) echo "Resultado: $((num1 + num2))" ;;
  2) echo "Resultado: $((num1 - num2))" ;;
  3) echo "Resultado: $((num1 * num2))" ;;
  4) if [ $num2 -ne 0 ]; then
       echo "Resultado: $((num1 / num2))"
     else
       echo "No se puede dividir por 0."
     fi ;;
  *) echo "Opción inválida."

