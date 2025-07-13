#!/bin/bash

echo "=== N8N CONNECTION DEBUG ==="
echo ""

# 1. Check N8N container logs chi tiết
echo "1. N8N RECENT ERRORS:"
docker logs vietbot_n8n --tail 50 2>&1 | grep -E "(error|Error|ERROR|failed|Failed|FAILED|Connection|connection)"

echo ""
echo "2. CHECK N8N ENV VARS:"
docker exec vietbot_n8n env | grep -E "(DB_|POSTGRES|REDIS)" | sort

echo ""
echo "3. TEST POSTGRES CONNECTION FROM N8N:"
docker exec vietbot_n8n sh -c "nc -zv postgres 5432 2>&1" || echo "Cannot connect to postgres"

echo ""
echo "4. TEST REDIS CONNECTION FROM N8N:"
docker exec vietbot_n8n sh -c "nc -zv redis 6379 2>&1" || echo "Cannot connect to redis"

echo ""
echo "5. CHECK NETWORK:"
docker network inspect vietbot_vietbot_network | grep -A 5 "Containers"

echo ""
echo "6. N8N HEALTHCHECK STATUS:"
docker inspect vietbot_n8n --format='{{json .State.Health}}' | jq

echo ""
echo "7. CHECK N8N CAN RESOLVE HOSTNAMES:"
docker exec vietbot_n8n sh -c "ping -c 1 postgres 2>&1" || echo "Cannot ping postgres"
docker exec vietbot_n8n sh -c "ping -c 1 vietbot_postgres 2>&1" || echo "Cannot ping vietbot_postgres"

echo ""
echo "8. N8N DATABASE CONFIG IN USE:"
docker exec vietbot_n8n sh -c "cat /home/node/.n8n/config 2>/dev/null || echo 'No config file'"

echo ""
echo "9. CHECK IF N8N CAN ACCESS DATABASE:"
docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c "SELECT current_database(), current_user, inet_server_addr(), inet_server_port();"
