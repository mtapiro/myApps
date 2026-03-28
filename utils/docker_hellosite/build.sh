#!/bin/bash
# Build the demo site Docker image

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HELLO_SITE_DIR="$SCRIPT_DIR/../hellosite"

echo "Building demo-site Docker image..."

docker build -t demo-site:latest -f "$SCRIPT_DIR/Dockerfile" "$HELLO_SITE_DIR"

echo "Done! Run with: docker run -p 3000:8080 demo-site:latest"
echo "Visit the site at http://localhost:3000"