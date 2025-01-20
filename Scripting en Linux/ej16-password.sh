#!/bin/bash

################################

# Alumno: Efrén Pérez Marrero 1ºDAW

# Ejercicio 16: Haz un script llamado ej16-password.sh que pida por teclado una contraseña al usuario (NO se usarán argumentos, sino que se pedirá que el usuario escribirá la contraseña en el teclado haciendo que esta contraseña NO se muestre en pantalla). Una vez que hayamos obtenido la contraseña, le volveremos a preguntar al usuario que la vuelva a añadir por teclado (sin mostrarla). Si el usuario indica la contraseña correcta, mostraremos un mensaje diciendo que ha acertado y el script finalizará. Si el usuario no acierta la contraseña, le indicaremos que la contraseña es incorrecta y le volveremos a pedir que la introduzca otra vez, y repetiremos esta pregunta hasta que el usuario la acierte.

#################################

correct_password="miContraseña"

while true; do
  read -sp "Introduce la contraseña: " password
  echo
  read -sp "Confirma la contraseña: " confirm_password
  echo

  if [ "$password" == "$correct_password" ] && [ "$password" == "$confirm_password" ]; then
    echo "¡Contraseña correcta!"
    break
  else
    echo "Contraseña incorrecta. Inténtalo de nuevo."
  fi
done

