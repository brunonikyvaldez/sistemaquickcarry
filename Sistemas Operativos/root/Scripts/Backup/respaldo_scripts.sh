#!/bin/bash
origen="/root/Scripts/"
destino="/root/Respaldos"
fecha=$(date +%Y%m%d)
carpeta_destino="Scripts"
archivo_respaldo="respaldo_scripts_$fecha.tgz"
tar -czf "$destino/$archivo_respaldo" -C "$origen" --transform="s,^,$carpeta_destino/," .
if [ $? -eq 0 ]; then
	echo "$(date) -----   Respaldo Scripts - OK" >> /root/Respaldos/confirmaciones.txt
else
	echo "$(date) -----   Respaldo Scripts - ERROR" >> /root/Respaldos/confirmaciones.txt
fi
