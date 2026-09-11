#!/bin/bash
# ==============================================================================
# Script: ping_sweep.sh
# Descripción: Escaneo rápido de hosts activos en un rango de red local /24
# Uso: ./ping_sweep.sh 192.168.1
# ==============================================================================

if [ "$1" == "" ]; then
    echo -e "\n[!] Uso correcto: $0 <primeros_tres_octetos>"
    echo -e "[!] Ejemplo: $0 192.168.1\n"
    exit 1
fi

echo -e "\n[*] Iniciando escaneo de red en el segmento: $1.0/24..."
echo "----------------------------------------------------"

for ip in $(seq 1 254); do
    ping -c 1 -W 1 $1.$ip > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "[+] Host activo encontrado: $1.$ip"
    fi
done

echo "----------------------------------------------------"
echo "[*] Escaneo completado."
