# Network Configuration - Updated: 2025-07-14 04:42:01

## Docker Networks
```
NETWORK ID     NAME                      DRIVER    SCOPE
223230e294c3   bridge                    bridge    local
d223fa96f851   host                      host      local
b65991d18fbe   none                      null      local
ea0be0ddad2c   vietbot_vietbot_network   bridge    local
```

## Network Details
```
[]
Error response from daemon: network vietbot_network not found
```

## Port Mappings
```
vietbot_caddy               0.0.0.0:80->80/tcp, [::]:80->80/tcp, 0.0.0.0:443->443/tcp, [::]:443->443/tcp, 0.0.0.0:2019->2019/tcp, [::]:2019->2019/tcp, 443/udp
vietbot_pgadmin             443/tcp, 0.0.0.0:5050->80/tcp, [::]:5050->80/tcp
vietbot_n8n                 127.0.0.1:5678->5678/tcp
vietbot_postgres_exporter   127.0.0.1:9187->9187/tcp
vietbot_redisinsight        5540/tcp, 0.0.0.0:8002->8001/tcp, [::]:8002->8001/tcp
vietbot_redis_exporter      127.0.0.1:9121->9121/tcp
vietbot_prometheus          0.0.0.0:9090->9090/tcp, [::]:9090->9090/tcp
vietbot_dozzle              0.0.0.0:8080->8080/tcp, [::]:8080->8080/tcp
vietbot_grafana             0.0.0.0:3000->3000/tcp, [::]:3000->3000/tcp
vietbot_postgres            5432/tcp
vietbot_portainer           8000/tcp, 9443/tcp, 0.0.0.0:9000->9000/tcp, [::]:9000->9000/tcp
vietbot_redis               6379/tcp
vietbot_node_exporter       127.0.0.1:9100->9100/tcp
```
