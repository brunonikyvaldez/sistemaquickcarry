#!/bin/bash
while [ true ]
do
	clear
	echo "0 = Volver"
	echo "1 - Mostrar Registros de ENTRADA"
	echo "2 - Mostrar Registros de SALIDA"
	echo "3 - Mostrar Registros de E/S"
	echo "4 - Intentos de Login fallidos"
	read -p "Opción: " op
	case $op in
		1) clear
		cat /root/registrosES | grep "ENTRADA"
		read -n 1 -s -r -p "Presione cualquier tecla para continuar...";;
		2) clear
		cat /root/registrosES | grep "SALIDA"
		read -n 1 -s -r -p "Presione cualquier tecla para continuar...";;
		3) clear
		cat /root/registrosES
		read -n 1 -s -r -p "Presione cualquier tecla para continuar...";;
		4) clear
		lastb
		read -n 1 -s -r -p "Presione cualquier tecla para continuar...";;
		0) exit;;
		*) echo "Opción no válida. Por favor, seleccione una opción válida (0-4)."
		sleep 3;;
	esac
done
