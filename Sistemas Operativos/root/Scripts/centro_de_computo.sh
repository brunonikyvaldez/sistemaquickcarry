#!/bin/bash
while [ true ]
do
	clear
	echo "0. Salir"
	echo "1. Gestión de Usuarios"
	echo "2. Gestión de Grupos"
	echo "3. Gestión de LOGS"
	echo "4. Gestión de Servicios"
	echo "5. Gestión de Procesos"
	echo "6. Gestión de Respaldos"
	echo "7. Centro de Red"
	read -p "Seleccione una opción (0-7): " op
	case $op in
		0) clear
		exit;;
		1) clear
		/root/Scripts/Gestion/gestion_de_usuarios.sh;;
		2) clear
		/root/Scripts/Gestion/gestion_de_grupos.sh;;
		3) clear
		/root/Scripts/Gestion/gestion_de_logs.sh;;
		4) clear
		/root/Scripts/Gestion/gestion_de_servicios.sh;;
		5) clear
		/root/Scripts/Gestion/gestion_de_procesos.sh;;
		6) clear
		/root/Scripts/Gestion/gestion_de_respaldos.sh;;
		7) nmtui
		clear;;
		*) echo "Opción no válida. Por favor, seleccione una opción válida (0-7)."
		sleep 3;;
	esac
done
