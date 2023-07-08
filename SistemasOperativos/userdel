#!/bin/bash
while [ true ]
do
	read -p "Hola usuario, ¿Que desea hacer? 0=Salir, 1=Eliminar usuario. " op
	case $op in
		0) exit;;
		1) read -p "Digame el nombre de usuario: " nom
		read -p "¿Desea eliminar todos los archivos del usuario? s/n " _op
		case $_op in
			s) userdel -r $nom;;
			n) userdel $nom;;
		esac;;
		*) echo "Error, opción no disponible.";;
	esac
done
