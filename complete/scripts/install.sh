#!/bin/bash
set -e

echo "===== Install Phase Started ====="

sudo mkdir -p /home/ec2-user/user-service

JAR=$(find target -name "*.jar" | head -1)

sudo cp "$JAR" /home/ec2-user/user-service/app.jar

echo "===== Install Phase Completed ====="
