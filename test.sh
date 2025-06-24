#!/bin/bash

# Test Nginx routing
echo "Testing /service1/hello..."
curl -s http://localhost:8080/service1/hello | jq

echo "Testing /service2/hello..."
curl -s http://localhost:8080/service2/hello | jq

# Test health checks
echo "Checking service health..."
docker inspect --format='{{.State.Health.Status}}' go-service
