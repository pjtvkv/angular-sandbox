#!/bin/sh
set -e

APP_DIR="/workspace/sandbox-app"

if [ ! -f "$APP_DIR/package.json" ]; then
  echo "Generating Angular workspace in $APP_DIR..."
  ng new sandbox-app \
    --directory sandbox-app \
    --style=scss \
    --routing \
    --standalone \
    --ssr=false \
    --skip-git \
    --package-manager npm \
    --defaults
fi

cd "$APP_DIR"

if [ ! -d "node_modules" ]; then
  echo "Installing dependencies..."
  npm install
fi

exec "$@"
