# VietBot Network Configuration - 2025-07-13 12:57:02

## Docker Network Overview
```
ea0be0ddad2c   vietbot_vietbot_network   bridge    local
```

## Container Network Details
```json
[]
Error response from daemon: network vietbot_network not found
Network info not available
```

## Port Mappings (External Access)
```
vietbot_caddy               0.0.0.0:80->80/tcp, [::]:80->80/tcp, 0.0.0.0:443->443/tcp, [::]:443->443/tcp, 0.0.0.0:2019->2019/tcp, [::]:2019->2019/tcp, 443/udp
vietbot_pgadmin             443/tcp, 0.0.0.0:5050->80/tcp, [::]:5050->80/tcp
vietbot_redisinsight        5540/tcp, 0.0.0.0:8002->8001/tcp, [::]:8002->8001/tcp
vietbot_prometheus          0.0.0.0:9090->9090/tcp, [::]:9090->9090/tcp
vietbot_dozzle              0.0.0.0:8080->8080/tcp, [::]:8080->8080/tcp
vietbot_grafana             0.0.0.0:3000->3000/tcp, [::]:3000->3000/tcp
vietbot_portainer           8000/tcp, 9443/tcp, 0.0.0.0:9000->9000/tcp, [::]:9000->9000/tcp
```

## Internal Container IPs
```

Cannot get container IPs
```

## DNS Resolution Tests
```
N8N -> PostgreSQL: Name:	vietbot_postgres
Address: 172.18.0.8
N8N -> Redis: Name:	vietbot_redis
Address: 172.18.0.4
```

## Connection Tests
```
PostgreSQL Port Test: vietbot_postgres (172.18.0.8:5432) open
Redis Port Test: vietbot_redis (172.18.0.4:6379) open
```

## Caddy Proxy Status
```
caddy.listeners.tls
http.handlers.acme_server
http.handlers.authentication
http.handlers.copy_response
http.handlers.copy_response_headers
http.handlers.encode
http.handlers.error
http.handlers.file_server
http.handlers.headers
http.handlers.intercept
```
