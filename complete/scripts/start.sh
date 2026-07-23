#!/bin/bash

echo "===== Starting Application ====="

APP_DIR=/home/ec2-user/user-service

cd $APP_DIR

nohup java -jar app.jar > application.log 2>&1 &

echo "Application started successfully."

echo "===== Start Completed ====="
