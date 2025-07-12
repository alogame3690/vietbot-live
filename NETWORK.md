# Network Configuration - 2025-07-12 18:38:01

## Docker Networks:
```
NETWORK ID     NAME                      DRIVER    SCOPE
223230e294c3   bridge                    bridge    local
d223fa96f851   host                      host      local
b65991d18fbe   none                      null      local
ea0be0ddad2c   vietbot_vietbot_network   bridge    local
```

## Container IPs:
```
/vietbot_caddy - 172.18.0.14
/vietbot_pgadmin - 172.18.0.12
/vietbot_n8n - 172.18.0.13
/vietbot_postgres_exporter - 172.18.0.11
/vietbot_redisinsight - 172.18.0.9
/vietbot_redis_exporter - 172.18.0.10
/vietbot_prometheus - 172.18.0.6
/vietbot_dozzle - 172.18.0.7
/vietbot_grafana - 172.18.0.2
/vietbot_postgres - 172.18.0.8
/vietbot_portainer - 172.18.0.5
/vietbot_redis - 172.18.0.4
/vietbot_node_exporter - 172.18.0.3
```

## Open Ports:
```
tcp        0      0 0.0.0.0:9090            0.0.0.0:*               LISTEN      20809/docker-proxy  
tcp        0      0 0.0.0.0:3000            0.0.0.0:*               LISTEN      20653/docker-proxy  
tcp        0      0 0.0.0.0:5050            0.0.0.0:*               LISTEN      21291/docker-proxy  
tcp        0      0 0.0.0.0:9000            0.0.0.0:*               LISTEN      20929/docker-proxy  
tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      21623/docker-proxy  
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      733/sshd: /usr/sbin 
tcp        0      0 0.0.0.0:443             0.0.0.0:*               LISTEN      21635/docker-proxy  
tcp        0      0 127.0.0.1:9100          0.0.0.0:*               LISTEN      20751/docker-proxy  
tcp        0      0 127.0.0.1:9121          0.0.0.0:*               LISTEN      21218/docker-proxy  
tcp        0      0 127.0.0.1:9187          0.0.0.0:*               LISTEN      21254/docker-proxy  
tcp        0      0 0.0.0.0:2019            0.0.0.0:*               LISTEN      21649/docker-proxy  
tcp        0      0 0.0.0.0:8080            0.0.0.0:*               LISTEN      20859/docker-proxy  
tcp        0      0 0.0.0.0:8002            0.0.0.0:*               LISTEN      21148/docker-proxy  
tcp        0      0 127.0.0.1:5678          0.0.0.0:*               LISTEN      21521/docker-proxy  
tcp6       0      0 :::9090                 :::*                    LISTEN      20815/docker-proxy  
tcp6       0      0 :::3000                 :::*                    LISTEN      20663/docker-proxy  
tcp6       0      0 :::5050                 :::*                    LISTEN      21296/docker-proxy  
tcp6       0      0 :::9000                 :::*                    LISTEN      20941/docker-proxy  
tcp6       0      0 :::80                   :::*                    LISTEN      21629/docker-proxy  
tcp6       0      0 :::22                   :::*                    LISTEN      733/sshd: /usr/sbin 
tcp6       0      0 :::443                  :::*                    LISTEN      21642/docker-proxy  
tcp6       0      0 :::2019                 :::*                    LISTEN      21655/docker-proxy  
tcp6       0      0 :::8080                 :::*                    LISTEN      20875/docker-proxy  
tcp6       0      0 :::8002                 :::*                    LISTEN      21155/docker-proxy  
```
