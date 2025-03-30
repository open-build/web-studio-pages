#!/bin/sh

# Load env vars from .env manually
if [ -f /app/webstudio/.env ]; then
  echo "▶ Loading environment from .env"
  export $(cat /app/webstudio/.env | grep -v '^#' | xargs)
fi

echo "▶ Building @webstudio-is/http-client..."
pnpm --filter=@webstudio-is/http-client build

echo "🚀 Starting Webstudio Builder..."

cd /app/webstudio/apps/builder
pnpm exec vite --host 0.0.0.0
