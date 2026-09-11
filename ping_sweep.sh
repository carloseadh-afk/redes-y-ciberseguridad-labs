# Guía Práctica: Análisis de Tráfico y Reglas de Firewall

Esta guía contiene filtros de Wireshark para investigación de incidentes de red y configuraciones básicas para el firewall UFW en Linux.

---

## 1. Filtros Avanzados de Wireshark

### Filtros por Protocolo e IP
- **Filtrar por IP específica (Origen o Destino):** `ip.addr == 192.168.1.50`
- **Filtrar solo tráfico de origen:** `ip.src == 192.168.1.50`
- **Filtrar peticiones DNS:** `dns`
- **Filtrar tráfico HTTP GET/POST:** `http.request.method == "GET" || http.request.method == "POST"`

### Filtros para Detección de Inseguridad / Anomalías
- **Buscar credenciales transmitidas en texto plano (HTTP Basic Auth):** `http.authorization`
- **Detectar escaneos de puertos (Flags SYN sin ACK):** `tcp.flags.syn == 1 and tcp.flags.ack == 0`
- **Filtrar tráfico que contenga una palabra clave (ej. password):** `frame contains "password"`

---

## 2. Configuración de Firewall Perimetral con UFW

### Comandos de Administración
- **Habilitar el firewall:** `sudo ufw enable`
- **Verificar estado y reglas activas:** `sudo ufw status verbose`

### Reglas de Tráfico
- **Bloquear todo el tráfico entrante por defecto:** `sudo ufw default deny incoming`
- **Permitir todo el tráfico saliente:** `sudo ufw default allow outgoing`
- **Permitir acceso SSH solo desde una IP de confianza:**
  `sudo ufw allow from 192.168.1.100 to any port 22 proto tcp`
- **Permitir tráfico Web seguro (HTTPS/443):** `sudo ufw allow 443/tcp`
