# VietBot Live Status - 2025-07-13 11:56:02

## 🖥️ VPS Info
- IP: 103.77.214.227
- Domain: n8n.ntvn8n.xyz
- OS: Ubuntu 22.04.5 LTS
- Uptime: up 3 days, 1 hour, 42 minutes
- CPU: 2 cores
- RAM: 3.8Gi
- Disk: 19G free
- Load Average:  0.15, 0.22, 0.16

## 🐳 Docker Services
```
NAMES                       STATUS                  PORTS
vietbot_caddy               Up 3 days               0.0.0.0:80->80/tcp, [::]:80->80/tcp, 0.0.0.0:443->443/tcp, [::]:443->443/tcp, 0.0.0.0:2019->2019/tcp, [::]:2019->2019/tcp, 443/udp
vietbot_pgadmin             Up 3 days               443/tcp, 0.0.0.0:5050->80/tcp, [::]:5050->80/tcp
vietbot_n8n                 Up 3 days (unhealthy)   127.0.0.1:5678->5678/tcp
vietbot_postgres_exporter   Up 3 days               127.0.0.1:9187->9187/tcp
vietbot_redisinsight        Up 3 days               5540/tcp, 0.0.0.0:8002->8001/tcp, [::]:8002->8001/tcp
vietbot_redis_exporter      Up 3 days               127.0.0.1:9121->9121/tcp
vietbot_prometheus          Up 3 days               0.0.0.0:9090->9090/tcp, [::]:9090->9090/tcp
vietbot_dozzle              Up 3 days               0.0.0.0:8080->8080/tcp, [::]:8080->8080/tcp
vietbot_grafana             Up 3 days               0.0.0.0:3000->3000/tcp, [::]:3000->3000/tcp
vietbot_postgres            Up 3 days (healthy)     5432/tcp
vietbot_portainer           Up 3 days               8000/tcp, 9443/tcp, 0.0.0.0:9000->9000/tcp, [::]:9000->9000/tcp
vietbot_redis               Up 3 days (healthy)     6379/tcp
vietbot_node_exporter       Up 3 days               127.0.0.1:9100->9100/tcp
```

## 📊 Resource Usage
```
NAME                        CPU %     MEM USAGE / LIMIT
vietbot_caddy               0.00%     13.88MiB / 3.82GiB
vietbot_pgadmin             0.03%     230.6MiB / 3.82GiB
vietbot_n8n                 0.84%     173.9MiB / 3.82GiB
vietbot_postgres_exporter   0.00%     7.102MiB / 3.82GiB
vietbot_redisinsight        0.00%     97.25MiB / 3.82GiB
vietbot_redis_exporter      0.00%     8.32MiB / 3.82GiB
vietbot_prometheus          0.21%     41.46MiB / 3.82GiB
vietbot_dozzle              0.00%     13.77MiB / 3.82GiB
vietbot_grafana             0.26%     76.41MiB / 3.82GiB
vietbot_postgres            0.02%     30.71MiB / 3.82GiB
vietbot_portainer           0.00%     10.7MiB / 3.82GiB
vietbot_redis               0.76%     3.258MiB / 3.82GiB
vietbot_node_exporter       0.00%     9.246MiB / 3.82GiB
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
 public | credentials_entity         | table | vietbot | permanent   | heap          | 16 kB      | 
 public | customers                  | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | escalations                | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | event_destinations         | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | execution_annotation_tags  | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | execution_annotations      | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | execution_data             | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | execution_entity           | table | vietbot | permanent   | heap          | 8192 bytes | 
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
 public | webhook_entity             | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | workflow_entity            | table | vietbot | permanent   | heap          | 88 kB      | 
 public | workflow_history           | table | vietbot | permanent   | heap          | 8192 bytes | 
 public | workflow_statistics        | table | vietbot | permanent   | heap          | 0 bytes    | 
 public | workflows_tags             | table | vietbot | permanent   | heap          | 0 bytes    | 
(45 rows)
```

## 🔄 N8N Status Summary
- URL: https://n8n.ntvn8n.xyz
- Container Status: unhealthy
- Workflows Total: 0
- Workflows Active: 0
- Executions Today: 0
- Failed Today: 0
- Last Execution: Never
- Version: 1.71.3

## 📊 N8N Workflows Detail
```sql
ERROR:  relation "workflows" does not exist
LINE 1: ...ength' as node_count, created_at, updated_at FROM workflows ...
                                                             ^
No workflows found
```

## 🔄 N8N Workflow Executions (Last 20)
```sql
ERROR:  relation "workflow_executions" does not exist
LINE 1: ...d_at, (finished_at - started_at) as duration FROM workflow_e...
                                                             ^
No executions found
```

## 🚨 Failed Executions Detail (Last 5)
```sql
ERROR:  relation "workflow_executions" does not exist
LINE 1: ...Data'->'resultData'->'error' as error_detail FROM workflow_e...
                                                             ^
No failed executions
```

## 📝 Active Workflow Nodes
```sql
ERROR:  relation "workflows" does not exist
LINE 1: ...(nodes::json->'nodes')->>'type' as node_type FROM workflows ...
                                                             ^
```

## 🔗 N8N Credentials Status
```sql
ERROR:  relation "credentials" does not exist
LINE 1: ...updated_at, COUNT(w.id) as used_in_workflows FROM credential...
                                                             ^
No credentials found
```

## 📊 N8N Webhook URLs
```sql
ERROR:  relation "workflows" does not exist
LINE 1: ...k_id, w.path, w.method FROM webhook_entity w JOIN workflows ...
                                                             ^
No webhooks found
```

## 📌 Redis Status
### Keys Overview:
```
Total Keys: 
Memory Usage: 1.20M
```

### Session Keys (Last 20):
```

```

### Queue Keys:
```

```

### Active Sessions Detail:
```

```

## 📨 Recent Facebook Messages (Last 20)
```sql
ERROR:  relation "messages" does not exist
LINE 1: ...e, m.message_text, m.created_at, m.processed FROM messages m...
                                                             ^
No messages found
```

## 📊 Message Queue Status
```sql
Unprocessed Messages: 0
Messages Last Hour: 0
Messages Today: 0
```

## 👥 Active Customers (Last 24h)
```sql
ERROR:  relation "messages" does not exist
LINE 1: ...created_at) as last_message FROM customers c JOIN messages m...
                                                             ^
No active customers
```

## 📊 Session States
```sql
ERROR:  relation "session_states" does not exist
LINE 1: ...er_id, current_state, context, last_activity FROM session_st...
                                                             ^
No active sessions
```

## 🛒 Recent Orders
```sql
 id | customer_id | status | total_amount | created_at 
----+-------------+--------+--------------+------------
(0 rows)
```

## ⚠️ Error Logs Summary
### System Errors (Last 24h):
```sql
ERROR:  relation "error_logs" does not exist
LINE 1: ...as count, MAX(created_at) as last_occurrence FROM error_logs...
                                                             ^
No errors
```

### Recent N8N Container Logs:
```
No recent errors
```

### Recent PostgreSQL Logs:
```
2025-07-13 04:56:05.945 UTC [228616] ERROR:  relation "workflows" does not exist at character 156
2025-07-13 04:56:06.020 UTC [228624] ERROR:  relation "credentials" does not exist at character 96
2025-07-13 04:56:06.097 UTC [228631] ERROR:  relation "workflows" does not exist at character 107
2025-07-13 04:56:06.513 UTC [228638] ERROR:  relation "messages" does not exist at character 110
2025-07-13 04:56:06.592 UTC [228646] ERROR:  relation "messages" does not exist at character 22
2025-07-13 04:56:06.663 UTC [228653] ERROR:  relation "messages" does not exist at character 22
2025-07-13 04:56:06.736 UTC [228661] ERROR:  relation "messages" does not exist at character 22
2025-07-13 04:56:06.809 UTC [228668] ERROR:  relation "messages" does not exist at character 141
2025-07-13 04:56:06.885 UTC [228675] ERROR:  relation "session_states" does not exist at character 76
2025-07-13 04:56:07.030 UTC [228690] ERROR:  relation "error_logs" does not exist at character 79
```

### Recent Redis Logs:
```
1:C 10 Jul 2025 04:10:21.523 # WARNING Memory overcommit must be enabled! Without it, a background save or replication may fail under low memory condition. Being disabled, it can also cause failures without low memory condition, see https://github.com/jemalloc/jemalloc/issues/1328. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
```

## 🔌 Container Health Checks
```
N8N Health: ❌ Unhealthy
PostgreSQL: /var/run/postgresql:5432 - accepting connections
✅ Ready
Redis: ✅ PONG
N8N -> PostgreSQL: ❌ Connection Failed
N8N -> Redis: ❌ Connection Failed
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
drwxr-xr-x  5 root root  4096 Jul 13 11:55 realtime-backup
-rw-r--r--  1 root root 19635 Jul  9 18:15 schema.sql
drwxr-xr-x  2 root root  4096 Jul  9 13:19 scripts
drwxr-xr-x  2 root root  4096 Jul  9 13:19 uploads
drwxr-xr-x  2 root root  4096 Jul  9 13:19 workflows
```
