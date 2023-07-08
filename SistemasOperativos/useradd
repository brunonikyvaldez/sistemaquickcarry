#!/bin/bash
while [ true ]
do
	read -p "Hola usuario, ¿Qué desea hacer?, 0=Salir, 1=Crear usuario. " op
	case $op in
		0) exit;;
		1) read -p "Digame el nombre del usuario: " nom
		read -p "Ahora digame la contraseña: " pass
		read -p "¿Quiere crearlo en una carpeta personalizada? s/n " _op
		case $_op in
			n) useradd $nom
			echo $pass | passwd --stdin $nom;;
			s) read -p "Digame la carpeta en donde lo quiere crear: " dir
			useradd $nom -d $dir
			echo $pass | passwd --stdin $nom;;
			*) echo "Error, opción no disponible";;
		esac;;
		*) echo "Error, opción no disponible.";;
	esac
done
