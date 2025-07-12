# VietBot Live Status - 2025-07-13 04:33:01

## 🖥️ VPS Info
- IP: 103.77.214.227
- Domain: n8n.ntvn8n.xyz
- OS: Ubuntu 22.04.5 LTS
- Uptime: up 2 days, 18 hours, 19 minutes
- CPU: 2 cores
- RAM: 3.8Gi
- Disk: 19G free

## 🐳 Docker Services
```
NAMES                       STATUS                  PORTS
vietbot_caddy               Up 2 days               0.0.0.0:80->80/tcp, [::]:80->80/tcp, 0.0.0.0:443->443/tcp, [::]:443->443/tcp, 0.0.0.0:2019->2019/tcp, [::]:2019->2019/tcp, 443/udp
vietbot_pgadmin             Up 2 days               443/tcp, 0.0.0.0:5050->80/tcp, [::]:5050->80/tcp
vietbot_n8n                 Up 2 days (unhealthy)   127.0.0.1:5678->5678/tcp
vietbot_postgres_exporter   Up 2 days               127.0.0.1:9187->9187/tcp
vietbot_redisinsight        Up 2 days               5540/tcp, 0.0.0.0:8002->8001/tcp, [::]:8002->8001/tcp
vietbot_redis_exporter      Up 2 days               127.0.0.1:9121->9121/tcp
vietbot_prometheus          Up 2 days               0.0.0.0:9090->9090/tcp, [::]:9090->9090/tcp
vietbot_dozzle              Up 2 days               0.0.0.0:8080->8080/tcp, [::]:8080->8080/tcp
vietbot_grafana             Up 2 days               0.0.0.0:3000->3000/tcp, [::]:3000->3000/tcp
vietbot_postgres            Up 2 days (healthy)     5432/tcp
vietbot_portainer           Up 2 days               8000/tcp, 9443/tcp, 0.0.0.0:9000->9000/tcp, [::]:9000->9000/tcp
vietbot_redis               Up 2 days (healthy)     6379/tcp
vietbot_node_exporter       Up 2 days               127.0.0.1:9100->9100/tcp
```

## 📊 Resource Usage
```
NAME                        CPU %     MEM USAGE / LIMIT
vietbot_caddy               0.03%     13.83MiB / 3.82GiB
vietbot_pgadmin             0.04%     230.8MiB / 3.82GiB
vietbot_n8n                 0.86%     174.8MiB / 3.82GiB
vietbot_postgres_exporter   0.00%     7.559MiB / 3.82GiB
vietbot_redisinsight        0.00%     96.61MiB / 3.82GiB
vietbot_redis_exporter      0.00%     9.605MiB / 3.82GiB
vietbot_prometheus          0.00%     38.07MiB / 3.82GiB
vietbot_dozzle              0.00%     11.03MiB / 3.82GiB
vietbot_grafana             0.24%     76.3MiB / 3.82GiB
vietbot_postgres            0.03%     29.97MiB / 3.82GiB
vietbot_portainer           0.00%     10.69MiB / 3.82GiB
vietbot_redis               0.85%     3.238MiB / 3.82GiB
vietbot_node_exporter       0.00%     9.039MiB / 3.82GiB
```

## 🗄️ Database Status
```sql
Database not accessible
```

## 🔄 N8N Status
- URL: https://n8n.ntvn8n.xyz
- Webhook: https://n8n.ntvn8n.xyz/webhook/facebook-webhook
- Workflows: 0 active
- Version: Unknown

## ⚠️ Recent Errors (Last 20 lines)
### N8N Errors:
```
Error response from daemon: No such container: n8n
```

### PostgreSQL Errors:
```
Error response from daemon: No such container: postgres
```

### Redis Errors:
```
Error response from daemon: No such container: redis
```

## 📁 Project Structure
```
total 96
drwxr-xr-x 11 root root  4096 Jul 12 12:26 .
drwxr-xr-x  4 root root  4096 Jul  9 13:19 ..
drwxr-xr-x  2 root root  4096 Jul  9 13:19 backups
-rw-r--r--  1 root root  1207 Jul  9 15:17 Caddyfile
-rw-r--r--  1 root root  1303 Jul  9 15:16 Caddyfile.bak
drwxr-xr-x  2 root root  4096 Jul 10 10:46 config
-rw-r--r--  1 root root  1119 Jul  9 13:41 DEPLOYMENT_SUMMARY.md
-rw-r--r--  1 root root  6798 Jul 10 10:52 docker-compose.yml
-rw-r--r--  1 root root  6962 Jul  9 14:24 docker-compose.yml.bak
-rw-------  1 root root   391 Jul  9 13:19 .env
drwxr-xr-x  2 root root  4096 Jul  9 13:19 images
drwxr-xr-x  2 root root  4096 Jul  9 13:19 logs
drwxr-xr-x  2 root root  4096 Jul  9 13:19 prometheus
drwxr-xr-x  4 root root  4096 Jul 12 14:08 realtime-backup
-rw-r--r--  1 root root 19635 Jul  9 18:15 schema.sql
drwxr-xr-x  2 root root  4096 Jul  9 13:19 scripts
drwxr-xr-x  2 root root  4096 Jul  9 13:19 uploads
drwxr-xr-x  2 root root  4096 Jul  9 13:19 workflows
```
