#!/bin/bash

set -e

echo "===== Install Phase Started ====="

APP_DIR=/home/ec2-user/user-service

mkdir -p "$APP_DIR"

JAR=$(find target -name "*.jar" | head -1)

cp "$JAR" "$APP_DIR/app.jar"

echo "JAR copied successfully."

echo "===== Install Phase Completed ====="
