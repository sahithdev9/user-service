#!/bin/bash
set -e

echo "===== Install Phase Started ====="

APP_DIR=/home/ec2-user/user-service
mkdir -p "$APP_DIR"

DEPLOY_DIR="$PWD"

echo "Current directory: $DEPLOY_DIR"

JAR=$(find "$DEPLOY_DIR" -type f -name "*.jar" | head -1)

if [ -z "$JAR" ]; then
    echo "ERROR: No JAR file found!"
    find "$DEPLOY_DIR" -type f
    exit 1
fi

echo "Found JAR: $JAR"

cp "$JAR" "$APP_DIR/app.jar"

echo "===== Install Phase Completed ====="
