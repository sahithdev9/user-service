#!/bin/bash

set -e

echo "===== Install Phase Started ====="

APP_DIR=/home/ec2-user/user-service

# Create application directory if it doesn't exist
mkdir -p $APP_DIR

# Copy the JAR file from the deployment bundle
cp *.jar $APP_DIR/app.jar

echo "JAR copied successfully."

echo "===== Install Phase Completed ====="
