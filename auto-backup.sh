#!/bin/bash
cd /opt/vietbot/realtime-backup

# Update status
cat > STATUS.md << STATUS
# VietBot Live Status - $(date)

## Docker Services
$(docker ps --format "table {{.Names}}\t{{.Status}}")

## Current Configuration
- N8N: https://n8n.ntvn8n.xyz
- Database: vietbot_ai
- Tables: 12

## Last Errors
$(docker logs n8n --tail 5 2>&1 | grep -i error || echo "No errors")
STATUS

# Git push
git add STATUS.md
git commit -m "Update $(date +%H:%M:%S)" -q
git push -q
