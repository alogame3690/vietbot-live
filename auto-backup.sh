#!/bin/bash

# VietBot Live Backup Script - COMPLETE Version với FULL System Visibility
# Chạy mỗi phút để backup TOÀN BỘ system status

BACKUP_DIR="/opt/vietbot/realtime-backup"
cd $BACKUP_DIR || exit 1

# Pull latest changes
git pull origin main --quiet

# Get timestamp
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Create STATUS.md với ĐẦY ĐỦ thông tin
cat > STATUS.md << EOF
# VietBot Live Status - $TIMESTAMP

## 🖥️ VPS Info
- IP: 103.77.214.227
- Domain: n8n.ntvn8n.xyz
- OS: $(lsb_release -d | cut -f2)
- Uptime: $(uptime -p)
- CPU: $(nproc) cores
- RAM: $(free -h | awk '/^Mem:/ {print $2}')
- Disk: $(df -h / | awk 'NR==2 {print $4}' | tr -d ' ') free
- Load Average: $(uptime | awk -F'load average:' '{print $2}')

## 🐳 Docker Services
\`\`\`
$(docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}" | head -20)
\`\`\`

## 📊 Resource Usage
\`\`\`
$(docker stats --no-stream --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}")
\`\`\`

## 🗄️ Database Status
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "\dt+" 2>&1 || echo "Database not accessible")
\`\`\`

## 🔄 N8N Status Summary
- URL: https://n8n.ntvn8n.xyz
- Container Status: $(docker inspect vietbot_n8n --format='{{.State.Health.Status}}' 2>/dev/null || echo "Unknown")
- Workflows Total: $(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -t -c "SELECT COUNT(*) FROM workflows" 2>/dev/null || echo "0")
- Workflows Active: $(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -t -c "SELECT COUNT(*) FROM workflows WHERE active = true" 2>/dev/null || echo "0")
- Executions Today: $(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -t -c "SELECT COUNT(*) FROM workflow_executions WHERE started_at > CURRENT_DATE" 2>/dev/null || echo "0")
- Failed Today: $(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -t -c "SELECT COUNT(*) FROM workflow_executions WHERE status = 'failed' AND started_at > CURRENT_DATE" 2>/dev/null || echo "0")
- Last Execution: $(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -t -c "SELECT started_at FROM workflow_executions ORDER BY started_at DESC LIMIT 1" 2>/dev/null || echo "Never")
- Version: $(docker exec vietbot_n8n n8n --version 2>/dev/null || echo "Unknown")

## 📊 N8N Workflows Detail
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT id, name, active, nodes::json->'length' as node_count, created_at, updated_at FROM workflows ORDER BY active DESC, updated_at DESC" 2>&1 || echo "No workflows found")
\`\`\`

## 🔄 N8N Workflow Executions (Last 20)
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT id, workflow_id, status, mode, started_at, finished_at, (finished_at - started_at) as duration FROM workflow_executions ORDER BY started_at DESC LIMIT 20" 2>&1 || echo "No executions found")
\`\`\`

## 🚨 Failed Executions Detail (Last 5)
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT id, workflow_id, started_at, data::json->'lastNodeExecuted' as last_node, data::json->'executionData'->'resultData'->'error' as error_detail FROM workflow_executions WHERE status = 'failed' ORDER BY started_at DESC LIMIT 5" 2>&1 || echo "No failed executions")
\`\`\`

## 📝 Active Workflow Nodes
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT w.id, w.name, json_array_elements(nodes::json->'nodes')->>'name' as node_name, json_array_elements(nodes::json->'nodes')->>'type' as node_type FROM workflows w WHERE active = true" 2>&1 | head -50 || echo "No active workflow nodes")
\`\`\`

## 🔗 N8N Credentials Status
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT c.id, c.name, c.type, c.created_at, c.updated_at, COUNT(w.id) as used_in_workflows FROM credentials c LEFT JOIN workflows w ON w.data::text LIKE '%\"credentialId\":\"' || c.id || '\"%' GROUP BY c.id ORDER BY used_in_workflows DESC" 2>&1 || echo "No credentials found")
\`\`\`

## 📊 N8N Webhook URLs
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT w.workflow_id, wf.name as workflow_name, w.webhook_id, w.path, w.method FROM webhook_entity w JOIN workflows wf ON w.workflow_id = wf.id WHERE wf.active = true" 2>&1 || echo "No webhooks found")
\`\`\`

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
EOF

# Create DOCKER_COMPOSE.yml
cp /opt/vietbot/docker-compose.yml DOCKER_COMPOSE.yml 2>/dev/null || echo "docker-compose.yml not found"

# Create DATABASE_SCHEMA.md với full details
cat > DATABASE_SCHEMA.md << EOF
# VietBot Database Schema - $TIMESTAMP

## Database Info
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT version()" 2>&1)
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT pg_database_size('vietbot_ai') as db_size" 2>&1)
\`\`\`

## Tables Overview
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "\dt+" 2>&1 || echo "Cannot access database")
\`\`\`

## Indexes
\`\`\`sql
$(docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "\di" 2>&1 || echo "No indexes")
\`\`\`

## Table Details & Sample Data
EOF

# Loop through all tables với schema và data
for table in customers conversations messages workflow_executions session_states orders products user_preferences faq_items analytics_events error_logs audit_logs workflows credentials webhook_entity; do
    echo "" >> DATABASE_SCHEMA.md
    echo "### 📊 Table: $table" >> DATABASE_SCHEMA.md
    echo "#### Schema:" >> DATABASE_SCHEMA.md
    echo "\`\`\`sql" >> DATABASE_SCHEMA.md
    docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "\d+ $table" 2>&1 >> DATABASE_SCHEMA.md || echo "Table not found"
    echo "\`\`\`" >> DATABASE_SCHEMA.md
    echo "" >> DATABASE_SCHEMA.md
    echo "#### Row Count:" >> DATABASE_SCHEMA.md
    echo "\`\`\`sql" >> DATABASE_SCHEMA.md
    docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT COUNT(*) as total_rows FROM $table" 2>&1 >> DATABASE_SCHEMA.md
    echo "\`\`\`" >> DATABASE_SCHEMA.md
    echo "" >> DATABASE_SCHEMA.md
    echo "#### Sample Data (First 5 rows):" >> DATABASE_SCHEMA.md
    echo "\`\`\`sql" >> DATABASE_SCHEMA.md
    docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT * FROM $table ORDER BY created_at DESC LIMIT 5" 2>&1 >> DATABASE_SCHEMA.md || docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT * FROM $table LIMIT 5" 2>&1 >> DATABASE_SCHEMA.md || echo "No data or table not found"
    echo "\`\`\`" >> DATABASE_SCHEMA.md
    echo "" >> DATABASE_SCHEMA.md
done

# Create NETWORK.md với full network details
cat > NETWORK.md << EOF
# VietBot Network Configuration - $TIMESTAMP

## Docker Network Overview
\`\`\`
$(docker network ls | grep vietbot)
\`\`\`

## Container Network Details
\`\`\`json
$(docker network inspect vietbot_network 2>&1 || echo "Network info not available")
\`\`\`

## Port Mappings (External Access)
\`\`\`
$(docker ps --format "table {{.Names}}\t{{.Ports}}" | grep -E "0.0.0.0|:::" || echo "No exposed ports")
\`\`\`

## Internal Container IPs
\`\`\`
$(docker network inspect vietbot_network -f '{{range .Containers}}{{.Name}}: {{.IPv4Address}}{{println}}{{end}}' 2>/dev/null || echo "Cannot get container IPs")
\`\`\`

## DNS Resolution Tests
\`\`\`
N8N -> PostgreSQL: $(docker exec vietbot_n8n nslookup vietbot_postgres 2>&1 | grep -A1 "Name:" || echo "DNS resolution failed")
N8N -> Redis: $(docker exec vietbot_n8n nslookup vietbot_redis 2>&1 | grep -A1 "Name:" || echo "DNS resolution failed")
\`\`\`

## Connection Tests
\`\`\`
PostgreSQL Port Test: $(docker exec vietbot_n8n nc -zv vietbot_postgres 5432 2>&1 || echo "Port test failed")
Redis Port Test: $(docker exec vietbot_n8n nc -zv vietbot_redis 6379 2>&1 || echo "Port test failed")
\`\`\`

## Caddy Proxy Status
\`\`\`
$(docker exec vietbot_caddy caddy list-modules | grep -E "http.handlers|tls" | head -10 || echo "Caddy info not available")
\`\`\`
EOF

# Create LOGS directory và save detailed logs
mkdir -p logs
docker logs vietbot_n8n --tail 200 > logs/n8n.log 2>&1
docker logs vietbot_postgres --tail 100 > logs/postgres.log 2>&1
docker logs vietbot_redis --tail 100 > logs/redis.log 2>&1
docker logs vietbot_caddy --tail 100 > logs/caddy.log 2>&1

# Create index.html nếu chưa có
if [ ! -f index.html ]; then
cat > index.html << 'INDEXEOF'
<!DOCTYPE html>
<html>
<head>
    <title>VietBot Live System</title>
    <meta charset="utf-8">
    <meta http-equiv="refresh" content="60">
    <style>
        body { font-family: monospace; padding: 20px; background: #1a1a1a; color: #0f0; }
        a { color: #0ff; text-decoration: none; }
        a:hover { text-decoration: underline; }
        h1 { color: #f0f; }
        .file { margin: 10px 0; padding: 10px; border: 1px solid #333; }
        .timestamp { color: #888; font-size: 0.9em; }
        .updated { color: #ff0; animation: pulse 2s infinite; }
        @keyframes pulse { 0% {opacity: 1;} 50% {opacity: 0.5;} 100% {opacity: 1;} }
    </style>
</head>
<body>
    <h1>🤖 VietBot Live System</h1>
    
    <h2>📊 Dynamic Files <span class="updated">(Updated every minute)</span></h2>
    <div class="file">📈 <a href="STATUS.md">STATUS.md</a> - Complete system status with N8N workflows</div>
    <div class="file">🐳 <a href="DOCKER_COMPOSE.yml">DOCKER_COMPOSE.yml</a> - Docker configuration</div>
    <div class="file">🗄️ <a href="DATABASE_SCHEMA.md">DATABASE_SCHEMA.md</a> - Full database schema & data</div>
    <div class="file">🌐 <a href="NETWORK.md">NETWORK.md</a> - Network configuration & tests</div>
    
    <h2>📁 Log Files</h2>
    <div class="file">📝 <a href="logs/n8n.log">n8n.log</a> - N8N container logs (last 200 lines)</div>
    <div class="file">📝 <a href="logs/postgres.log">postgres.log</a> - PostgreSQL logs</div>
    <div class="file">📝 <a href="logs/redis.log">redis.log</a> - Redis logs</div>
    <div class="file">📝 <a href="logs/caddy.log">caddy.log</a> - Caddy proxy logs</div>
    
    <p class="timestamp">Auto-refresh every 60 seconds | Last update: <span id="time"></span></p>
    <script>
        document.getElementById('time').textContent = new Date().toLocaleString('vi-VN');
        // Auto refresh indicator
        let seconds = 60;
        setInterval(() => {
            seconds--;
            if (seconds <= 10) {
                document.querySelector('.updated').style.color = '#f00';
            }
        }, 1000);
    </script>
</body>
</html>
INDEXEOF
fi

# Git commit and push
git add -A
git commit -m "Auto backup - $TIMESTAMP - Full system visibility" --quiet
git push origin main --quiet

echo "Backup completed at $TIMESTAMP with COMPLETE system visibility"
