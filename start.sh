#!/bin/sh

echo "▶ Building @webstudio-is/http-client..."
pnpm --filter=@webstudio-is/http-client build

echo "🚀 Starting Webstudio Builder..."

cd /app/webstudio/apps/builder

# Run Vite directly
pnpm exec vite --host 0.0.0.0
