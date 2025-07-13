
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
