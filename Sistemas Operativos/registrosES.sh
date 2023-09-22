#!/bin/bash
while [ true ]
do
	echo "1 - Mostrar Registros de ENTRADA"
	echo "2 - Mostrar Registros de SALIDA"
	echo "3 - Mostrar Registros de E/S"
	echo "4 - Intentos de Login fallidos"
	echo "0 - Salir"
	read -p "Opción: " op
	clear
	case $op in
		1) less /home/registroES | grep "ENTRADA";;
		2) less /home/registroES | grep "SALIDA";;
		3) less /home/registroES;;
		4) lastb;;
		0) exit;;
		*) echo "Elija una opción que sea válida";;
	esac
done
