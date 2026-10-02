#!/bin/bash
set -e

echo "Starting PS5 Relapse Exploit server..."

cd /app
exec python3 -m http.server 8000
