# Laboratorio de Redes y Ciberseguridad

Repositorio con apuntes, comandos y laboratorios de análisis de tráfico de red y administración de sistemas.

## Comandos Principales

### Diagnóstico de Red
- Probar conectividad: `ping -c 4 192.168.1.1`
- Trazado de ruta de paquetes: `traceroute 8.8.8.8` o `tracert 8.8.8.8`
- Ver tabla de enrutamiento: `ip route` / `netstat -rn`

### Captura de Tráfico
- Captura de paquetes en terminal: `tcpdump -i eth0 -n port 80`
- Inspección de paquetes HTTP/DNS mediante Wireshark.
