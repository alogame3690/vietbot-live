# VietBot Live Status

## ⏰ TIME INFORMATION
- **VPS Time**: 2025-07-13 18:21:01
- **VPS Timezone**: Asia/Ho_Chi_Minh
- **Last Git Commit**: 2025-07-13 18:21:11 +0700 c0c9dee Auto backup -  - Full system visibility
- **Script Run Time**: 2025-07-13 11:21:01 UTC

## 🖥️ VPS Info
- IP: 103.77.214.227
- Domain: n8n.ntvn8n.xyz
- OS: Ubuntu 22.04.5 LTS
- Uptime: up 3 days, 8 hours, 7 minutes
- CPU: 2 cores
- RAM: 3.8Gi
- Disk: 19 GB free
- Load Average:  0.41, 0.42, 0.49


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
vietbot_caddy               0.93%     14.54MiB / 3.82GiB
vietbot_pgadmin             0.04%     230.7MiB / 3.82GiB
vietbot_n8n                 0.75%     177.3MiB / 3.82GiB
vietbot_postgres_exporter   0.00%     7.691MiB / 3.82GiB
vietbot_redisinsight        0.00%     97.62MiB / 3.82GiB
vietbot_redis_exporter      0.00%     8.887MiB / 3.82GiB
vietbot_prometheus          0.00%     38.55MiB / 3.82GiB
vietbot_dozzle              0.00%     14.75MiB / 3.82GiB
vietbot_grafana             0.36%     76.39MiB / 3.82GiB
vietbot_postgres            0.01%     31.03MiB / 3.82GiB
vietbot_portainer           0.00%     10.7MiB / 3.82GiB
vietbot_redis               0.64%     3.258MiB / 3.82GiB
vietbot_node_exporter       0.00%     9.41MiB / 3.82GiB
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
- Container Status: Up 3 days (unhealthy)
- Container Health: unhealthy
- Workflows Total: 1
- Workflows Active: 0
- Executions Today: 
- Failed Today: 
- Last Execution: 
- Version: 1.71.3

## 📊 N8N Workflows Detail
```sql
ERROR:  column "created_at" does not exist
LINE 1: ...ay_length(nodes::jsonb -> 'nodes') as node_count, created_at...
                                                             ^
HINT:  Perhaps you meant to reference the column "workflow_entity.createdAt".
No workflows found
```

## 🔄 N8N Workflow Executions (Last 20)
```sql
ERROR:  column e.workflow_id does not exist
LINE 1: ...execution_entity e LEFT JOIN workflow_entity w ON e.workflow...
                                                             ^
HINT:  Perhaps you meant to reference the column "e.workflowId".
No executions found
```

## 🚨 Failed Executions Detail (Last 5)
```sql
ERROR:  column e.workflow_id does not exist
LINE 1: ...execution_entity e LEFT JOIN workflow_entity w ON e.workflow...
                                                             ^
HINT:  Perhaps you meant to reference the column "e.workflowId".
No failed executions
```

## 📝 Active Workflow Nodes
```sql
 id | name | node_type 
----+------+-----------
(0 rows)
```

## 🔗 N8N Credentials Status
```sql
ERROR:  column "created_at" does not exist
LINE 1: SELECT id, name, type, created_at, updated_at FROM credentia...
                               ^
HINT:  Perhaps you meant to reference the column "credentials_entity.createdAt".
No credentials found
```

## 📊 N8N Webhook URLs
```sql
ERROR:  column we.workflow_id does not exist
LINE 1: ... webhook_entity we LEFT JOIN workflow_entity w ON we.workflo...
                                                             ^
HINT:  Perhaps you meant to reference the column "we.workflowId".
No webhooks found
```

## 🔧 N8N Environment Check
```
CLAUDE_API_KEY=
DB_LOGGING_ENABLED=true
DB_POSTGRESDB_DATABASE=vietbot_ai
DB_POSTGRESDB_HOST=postgres
DB_POSTGRESDB_PASSWORD=iuXBVghVBnXmoEnCMT1hY9zmZ
DB_POSTGRESDB_PORT=5432
DB_POSTGRESDB_USER=vietbot
DB_TYPE=postgresdb
FB_APP_SECRET=
FB_PAGE_TOKEN=
FB_VERIFY_TOKEN=vietbot2025verify
N8N_AI_ENABLED=true
N8N_COMMUNITY_PACKAGE_ENABLED=true
N8N_COOKIE_SAME_SITE_POLICY=lax
N8N_DIAGNOSTICS_ENABLED=true
N8N_EDITOR_BASE_URL=https://n8n.ntvn8n.xyz
N8N_ENCRYPTION_KEY=TbCEcjXF2p4Vrdbdn0LXyXvnFYQKx3zK
N8N_EVALUATIONS_ENABLED=true
N8N_FRONTEND_LOGGING=true
N8N_HOST=n8n.ntvn8n.xyz
N8N_LOG_FILE=/home/node/.n8n/logs/n8n.log
N8N_LOG_LEVEL=debug
N8N_LOG_OUTPUT=console,file
N8N_METRICS=true
N8N_PORT=5678
N8N_PROTOCOL=https
N8N_RELEASE_TYPE=stable
N8N_SECURE_COOKIE=false
N8N_TEMPLATES_ENABLED=true
N8N_USER_MANAGEMENT_DISABLED=false
N8N_VERSION=1.71.3
N8N_VERSION_CONTROL_ENABLED=true
N8N_WEBHOOK_URL=https://n8n.ntvn8n.xyz
WEBHOOK_URL=https://n8n.ntvn8n.xyz
```

## 📌 Redis Status
### Keys Overview:
\`\`\`
Total Keys: $(docker exec vietbot_redis redis-cli DBSIZE | awk '{print $2}' || echo "0")
Memory Usage: $(docker exec vietbot_redis redis-cli INFO memory | grep used_memory_human | cut -d: -f2 || echo "Unknown")
\`\`\`

### Session Keys (Last 20):
\`\`\`
$(docker exec vietbot_redis redis-cli --scan --pattern "session:*" | head -20 || echo "No session keys")
\`\`\`

### Queue Keys:
\`\`\`
$(docker exec vietbot_redis redis-cli --scan --pattern "queue:*" | head -20 || echo "No queue keys")
\`\`\`

### Active Sessions Detail:
\`\`\`
$(for key in $(docker exec vietbot_redis redis-cli --scan --pattern "session:*" | head -5); do echo "=== $key ==="; docker exec vietbot_redis redis-cli GET "$key" 2>/dev/null; done || echo "No active sessions")
\`\`\`

## 📨 Recent Facebook Messages (Last 20)
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT m.id, m.conversation_id, m.sender_id, c.customer_name, m.message_text, m.created_at, m.processed FROM messages m LEFT JOIN customers c ON m.sender_id = c.facebook_id ORDER BY m.created_at DESC LIMIT 20" 2>&1 || echo "No messages found")
\`\`\`

## 📊 Message Queue Status
\`\`\`sql
Unprocessed Messages: $(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -t -c "SELECT COUNT(*) FROM messages WHERE processed = false" 2>/dev/null || echo "0")
Messages Last Hour: $(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -t -c "SELECT COUNT(*) FROM messages WHERE created_at > NOW() - INTERVAL '1 hour'" 2>/dev/null || echo "0")
Messages Today: $(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -t -c "SELECT COUNT(*) FROM messages WHERE created_at > CURRENT_DATE" 2>/dev/null || echo "0")
\`\`\`

## 👥 Active Customers (Last 24h)
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT DISTINCT c.id, c.facebook_id, c.customer_name, COUNT(m.id) as message_count, MAX(m.created_at) as last_message FROM customers c JOIN messages m ON c.facebook_id = m.sender_id WHERE m.created_at > NOW() - INTERVAL '24 hours' GROUP BY c.id ORDER BY last_message DESC LIMIT 10" 2>&1 || echo "No active customers")
\`\`\`

## 📊 Session States
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT session_id, customer_id, current_state, context, last_activity FROM session_states WHERE last_activity > NOW() - INTERVAL '1 hour' ORDER BY last_activity DESC LIMIT 10" 2>&1 || echo "No active sessions")
\`\`\`

## 🛒 Recent Orders
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT id, customer_id, status, total_amount, created_at FROM orders ORDER BY created_at DESC LIMIT 10" 2>&1 || echo "No orders found")
\`\`\`

## ⚠️ Error Logs Summary
### System Errors (Last 24h):
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT error_type, COUNT(*) as count, MAX(created_at) as last_occurrence FROM error_logs WHERE created_at > NOW() - INTERVAL '24 hours' GROUP BY error_type ORDER BY count DESC" 2>&1 || echo "No errors")
\`\`\`

### Recent N8N Container Logs:
\`\`\`
$(docker logs vietbot_n8n --tail 30 2>&1 | grep -E "ERROR|WARN|Failed|Error" || echo "No recent errors")
\`\`\`

### Recent PostgreSQL Logs:
\`\`\`
$(docker logs vietbot_postgres --tail 20 2>&1 | grep -E "ERROR|FATAL|PANIC" || echo "No recent errors")
\`\`\`

### Recent Redis Logs:
\`\`\`
$(docker logs vietbot_redis --tail 20 2>&1 | grep -E "ERROR|WARNING" || echo "No recent errors")
\`\`\`

## 🔌 Container Health Checks
\`\`\`
N8N Health: $(docker exec vietbot_n8n wget -q -O- http://localhost:5678/healthz 2>/dev/null && echo "✅ Healthy" || echo "❌ Unhealthy")
PostgreSQL: $(docker exec vietbot_postgres pg_isready -U vietbot 2>/dev/null && echo "✅ Ready" || echo "❌ Not Ready")
Redis: $(docker exec vietbot_redis redis-cli ping 2>/dev/null | grep -q PONG && echo "✅ PONG" || echo "❌ No PONG")
N8N -> PostgreSQL: $(docker exec vietbot_n8n psql -h vietbot_postgres -U vietbot -d vietbot_ai -c "SELECT 1" &>/dev/null && echo "✅ Connected" || echo "❌ Connection Failed")
N8N -> Redis: $(docker exec vietbot_n8n redis-cli -h vietbot_redis ping 2>/dev/null | grep -q PONG && echo "✅ Connected" || echo "❌ Connection Failed")
\`\`\`

## 📁 Project Structure
\`\`\`
$(ls -la /opt/vietbot/)
\`\`\`
