#!/bin/bash
origen="/root/ARespaldar"
destino="/root/Respaldos"
fehca=$(date +%Y%m%d)
archivo_respaldo="respaldo_$fecha.tgz"
tar -czf "$destino/$archivo_respaldo" -C "$origen" .
if [ $? -eq 0 ]; then
	echo "OK"
else
	echo "Error"
fi
