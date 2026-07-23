#!/bin/bash
set -e

echo "===== Starting Application ====="

APP_DIR=/home/ec2-user/user-service

cd "$APP_DIR"

pkill -f "java -jar" || true

JAR=$(ls rest-service-complete-*.jar | head -1)

nohup java -jar "$JAR" > application.log 2>&1 &

sleep 10

echo "Application started successfully."

echo "===== Start Completed ====="
