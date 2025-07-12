# Database Schema - $(date)
\`\`\`sql
$(docker exec postgres pg_dump -U vietbot -d vietbot_ai --schema-only 2>/dev/null || echo "Schema not available")
\`\`\`
