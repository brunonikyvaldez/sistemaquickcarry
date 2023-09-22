#!/bin/bash
function Cambiar_directorio(){
	usermod -md $1 $2
}
function Cambiar_expiredate(){
	usermod -e $1 $2
}
function Cambiar_grupo(){
	usermod -g $1 $2
}
function Cambiar_nombre(){
	usermod -l $1 $2
}
function Cambiar_contraseña(){
	echo $1 | passwd --stdin $2
}
function Agregar_grupo(){
	usermod -aG $1 $2
}

while [ true ]
do
	read -p "Hola usuario, ¿Que desea hacer? 0=Salir, 1=Modificar usuarios. " op
	case $op in
		0) exit;;
		1) read -p "¿Que desea modificar? 0=Salir, 1=Cambiar nombre, 2=Cambiar grupo, 3=Cambiar directorio home, 4=Cambiar fecha de expiración de la contraseña, 5=Cambiar Constraseña, Agregar a un grupo. " op_1
		case $op_1 in
			0) exit;;
			1) read -p "Ingrese el usuario: " old_nom
			read -p "Ingrese el nuevo nombre: " new_nom
			Cambiar_nombre $new_nom $old_nom;;
			2) read -p "Ingrese el usuario: " nom_us
			read -p "Ingrese el nuevo grupo: " new_gp
			Cambiar_grupo $new_gp $nom_us;;
			3) read -p "Ingrese el usuario: " nom_us
			read -p "Ingrese el nuevo directorio home: " new_dir
			Cambiar_directorio $new_dir $nom_us;;
			4) read -p "Ingrese el usuario: " nom_us
			read -p "Ingrese la fecha de expiración: " new_date
			Cambiar_expiredate $new_date $nom_us;;
			5) read -p "Ingrese nueva contraseña: " newpass
			read -p "Ingrese el usuario: " user
			Cambiar_contraseña $newpass $user;;
			6) read -p "Ingrese usuario: " user
			read -p "Ingrese el grupo: " grp
			Agregar_grupo $grp $user;;
			*) echo "Error, opción no disponible";;
		esac;;
		*) echo "Error, opción no disponible.";;
	esac
done
