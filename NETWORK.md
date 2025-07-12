# Network Configuration
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
