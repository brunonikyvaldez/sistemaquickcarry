#!/bin/bash
#Función para obtener la ruta de los archivos a empaquetar
ruta_archivos(){
	read -p "Ingrese la ruta de los archivos que desea empaquetar: " ruta_arch
	if [ ! -d "$ruta_arch" ]; then
		echo "La ruta no existe o esta mal insgresada."
		ruta_archivos
	fi
}

#Función para obtener la ruta de destino del archivo comprimido
ruta_destino_archivos() {
	read -p "Ingrese la ruta de destino para el archivo comprimido: " ruta_dest_arch
	if [ ! -d "$ruta_dest_arch" ]; then
		echo "La ruta de destino no existe o esta mal ingresada."
		ruta_destino_archivos
	fi
}

#Función principal para empaquetar y comprimir los archivos
main_emp-comp() {
	ruta_archivos
	ruta_destino_archivos

	#Nombre del archivo comprimido
	fecha=$(date +%Y%m%d%H%M%S)
	arch_comp="${fecha}_archivos.tgz"

	#Empaquetar y comprimir los archivos
	tar -czvf "$ruta_dest_arch/$arch_comp" -C "$ruta_arch" .
	echo "Los archivos han sido empaquetado y comprimidos en $ruta_dest_arch/$arch_comp."
}

#Función para desempaquetar el archivo en su ubicación actual
ruta_desempaquetar(){
	tar -xzvf "$ruta_des"
	echo "El archivo ha sido desempaquetado en su ubicación actual."
}

#Función principal para desempaquetar los archivos
main_des() {
	read -p "Ingrese la ruta del archivo comprimido: " ruta_des
	if [ ! -f "$ruta_des" ]; then
		echo "La ruta no existe o esta mal ingresada."
		exit 1
	fi
	#extraction_dir=$(dirname "$ruta_des")
	#cd "$"
	ruta_desempaquetar
	rm -f "$ruta_des"
	echo "El archivo comprimido ha sido eliminado."
}

while [ true ]
do
	echo "1 - Empaquetar y comprimir."
	echo "2 - Desempaquetar"
	echo "0 - Salir."
	read -p "Opción: " op
	clear
	case $op in
		1) main_emp-comp;;
		2) main_des;;
		0) exit;;
		*) echo "Elija una opción disponible.";;
	esac
done
