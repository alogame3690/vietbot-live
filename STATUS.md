# VietBot Live Status

## ⏰ TIME INFORMATION
- **VPS Time**: 2025-07-15 18:29:01
- **VPS Timezone**: Asia/Ho_Chi_Minh
- **Script Run Time**: 2025-07-15 11:29:01 UTC
- **Unix Timestamp**: 1752578941
- **Session Started**:  2025-07-13 20:38:10
- **Last Update**: Tue Jul 15 06:29:01 PM +07 2025
- **Next Update**: 2025-07-15 18:30:01

## 🖥️ VPS Info
- IP: 103.77.214.227
- Domain: n8n.ntvn8n.xyz
- OS: Ubuntu 22.04.5 LTS
- Uptime: up 5 days, 8 hours, 15 minutes
- CPU: 2 cores
- RAM: 3.8Gi
- Disk: 19G free
- Load Average:  0.20, 0.26, 0.19

## 🐳 Docker Services
```
NAMES                       STATUS                    PORTS
vietbot_caddy               Up 5 days                 80->80/tcp, [::]:80->80/tcp, 443->443/tcp, [::]:443->443/tcp, 2019->2019/tcp, [::]:2019->2019/tcp, 443/udp
vietbot_pgadmin             Up 5 days                 443/tcp, 5050->80/tcp, [::]:5050->80/tcp
vietbot_n8n                 Up 30 hours (unhealthy)   127.0.0.1:5678->5678/tcp
vietbot_postgres_exporter   Up 5 days                 127.0.0.1:9187->9187/tcp
vietbot_redisinsight        Up 5 days                 5540/tcp, 8002->8001/tcp, [::]:8002->8001/tcp
vietbot_redis_exporter      Up 5 days                 127.0.0.1:9121->9121/tcp
vietbot_prometheus          Up 5 days                 9090->9090/tcp, [::]:9090->9090/tcp
vietbot_dozzle              Up 5 days                 8080->8080/tcp, [::]:8080->8080/tcp
vietbot_grafana             Up 5 days                 3000->3000/tcp, [::]:3000->3000/tcp
vietbot_postgres            Up 5 days (healthy)       5432/tcp
vietbot_portainer           Up 5 days                 8000/tcp, 9443/tcp, 9000->9000/tcp, [::]:9000->9000/tcp
vietbot_redis               Up 5 days (healthy)       6379/tcp
vietbot_node_exporter       Up 5 days                 127.0.0.1:9100->9100/tcp
```

## 📊 Resource Usage
```
NAME                        CPU %     MEM USAGE / LIMIT
vietbot_caddy               0.00%     14.6MiB / 3.82GiB
vietbot_pgadmin             0.04%     237.3MiB / 3.82GiB
vietbot_n8n                 0.82%     189.1MiB / 3.82GiB
vietbot_postgres_exporter   0.00%     8.125MiB / 3.82GiB
vietbot_redisinsight        0.00%     98.38MiB / 3.82GiB
vietbot_redis_exporter      0.00%     9.629MiB / 3.82GiB
vietbot_prometheus          0.46%     41.8MiB / 3.82GiB
vietbot_dozzle              0.00%     12.02MiB / 3.82GiB
vietbot_grafana             0.36%     76.48MiB / 3.82GiB
vietbot_postgres            0.04%     40.04MiB / 3.82GiB
vietbot_portainer           0.00%     10.73MiB / 3.82GiB
vietbot_redis               0.71%     4.195MiB / 3.82GiB
vietbot_node_exporter       0.00%     9.305MiB / 3.82GiB
```

## 🗄️ Database Status
```sql
                                               List of relations
 Schema |            Name            | Type  |  Owner  | Persistence | Access method |    Size    | Description 
--------+----------------------------+-------+---------+-------------+---------------+------------+-------------
 public | analytics                  | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | annotation_tag_entity      | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | auth_identity              | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | auth_provider_sync_history | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | conversations              | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | credentials_entity         | table | vietbot | permanent   | heap          | 32 kB      | 
 public | customers                  | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | escalations                | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | event_destinations         | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | execution_annotation_tags  | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | execution_annotations      | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | execution_data             | table | vietbot | permanent   | heap          | 1648 kB    | 
 public | execution_entity           | table | vietbot | permanent   | heap          | 48 kB      | 
 public | execution_metadata         | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | faq                        | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | installed_nodes            | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | installed_packages         | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | intents                    | table | vietbot | permanent   | heap          | 16 kB      | 
 public | invalid_auth_token         | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | message_queue              | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | migrations                 | table | vietbot | permanent   | heap          | 16 kB      | 
 public | order_items                | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | orders                     | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | processed_data             | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | products                   | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | project                    | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | project_relation           | table | vietbot | permanent   | heap          | 16 kB      | 
 public | role                       | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | sessions                   | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | settings                   | table | vietbot | permanent   | heap          | 16 kB      | 
 public | shared_credentials         | table | vietbot | permanent   | heap          | 16 kB      | 
 public | shared_workflow            | table | vietbot | permanent   | heap          | 16 kB      | 
 public | system_config              | table | vietbot | permanent   | heap          | 16 kB      | 
 public | tag_entity                 | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | test_definition            | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | test_metric                | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | test_run                   | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | user                       | table | vietbot | permanent   | heap          | 16 kB      | 
 public | user_api_keys              | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | variables                  | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | webhook_entity             | table | vietbot | permanent   | heap          | 16 kB      | 
 public | workflow_entity            | table | vietbot | permanent   | heap          | 232 kB     | 
 public | workflow_history           | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | workflow_statistics        | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | workflows_tags             | table | vietbot | permanent   | heap          | 0 bytes    | 
(45 rows)
```

## 🔄 N8N Status Summary
- URL: https://n8n.ntvn8n.xyz
- Container Status: 
unknown
- Workflows Total: 2
- Version: unknown

## 📌 Redis Status
### Keys Overview:
```
Total Keys: 0
Memory Usage: 1.25M
```

## 🔌 Container Health Checks
```
N8N Health: 
unknown
PostgreSQL: /var/run/postgresql:5432 - accepting connections
Redis: PONG
```
