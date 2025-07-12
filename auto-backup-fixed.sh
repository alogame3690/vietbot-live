#!/bin/bash
# VietBot Fixed Backup Script
cd /opt/vietbot/realtime-backup

# Get current time
NOW=$(date +"%Y-%m-%d %H:%M:%S")

# 1. SYSTEM STATUS
cat > STATUS.md << EOF
# VietBot Live Status - $NOW

## 🖥️ VPS Info
- IP: 103.77.214.227
- Domain: n8n.ntvn8n.xyz
- OS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)
- Uptime: $(uptime -p)
- CPU: $(nproc) cores
- RAM: $(free -h | grep Mem | awk '{print $2}')
- Disk: $(df -h / | tail -1 | awk '{print $4}') free

## 🐳 Docker Services
\`\`\`
$(docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}")
\`\`\`

## 📊 Resource Usage
\`\`\`
$(docker stats --no-stream --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}")
\`\`\`

## 🗄️ Database Status
\`\`\`sql
$(docker exec postgres psql -U vietbot -d vietbot_ai -c "SELECT tablename, pg_size_pretty(pg_total_relation_size(tablename::text)) as size FROM pg_tables WHERE schemaname = 'public' ORDER BY tablename;" 2>/dev/null || echo "Database not accessible")
\`\`\`

## 🔄 N8N Status
- URL: https://n8n.ntvn8n.xyz
- Webhook: https://n8n.ntvn8n.xyz/webhook/facebook-webhook
- Workflows: $(docker exec n8n n8n list:workflow 2>/dev/null | wc -l || echo "0") active
- Version: $(docker exec n8n n8n --version 2>/dev/null || echo "Unknown")

## ⚠️ Recent Errors (Last 20 lines)
### N8N Errors:
\`\`\`
$(docker logs n8n --tail 20 2>&1 | grep -i -E "error|warn|fail" || echo "No errors")
\`\`\`

### PostgreSQL Errors:
\`\`\`
$(docker logs postgres --tail 10 2>&1 | grep -i error || echo "No errors")
\`\`\`

### Redis Errors:
\`\`\`
$(docker logs redis --tail 10 2>&1 | grep -i error || echo "No errors")
\`\`\`

## 📁 Project Structure
\`\`\`
$(tree -L 2 /opt/vietbot 2>/dev/null || ls -la /opt/vietbot)
\`\`\`
EOF

# 2. DOCKER COMPOSE CONFIG
cat > DOCKER_COMPOSE.yml << EOF
# Docker Compose Configuration - $NOW
$(cat /opt/vietbot/docker-compose.yml)
EOF

# 3. N8N WORKFLOWS
mkdir -p workflows
docker exec n8n n8n export:workflow --all --output=/tmp/workflows.json 2>/dev/null && \
docker cp n8n:/tmp/workflows.json workflows/all_workflows_$(date +%Y%m%d).json 2>/dev/null || \
echo "No workflows to export" > workflows/README.md

# 4. DATABASE SCHEMA
cat > DATABASE_SCHEMA.md << EOF
# Database Schema - $NOW
\`\`\`sql
$(docker exec postgres pg_dump -U vietbot -d vietbot_ai --schema-only 2>/dev/null || echo "Schema not available")
\`\`\`
EOF

# 5. NETWORK INFO
cat > NETWORK.md << EOF
# Network Configuration - $NOW

## Docker Networks:
\`\`\`
$(docker network ls)
\`\`\`

## Container IPs:
\`\`\`
$(docker inspect -f '{{.Name}} - {{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -q) 2>/dev/null)
\`\`\`

## Open Ports:
\`\`\`
$(netstat -tlnp 2>/dev/null | grep LISTEN || ss -tlnp | grep LISTEN)
\`\`\`
EOF

# Git operations
git add -A
git commit -m "Auto backup $NOW" -q || true
git push -q || echo "Push failed"

echo "[$(date +%H:%M:%S)] Backup completed"
