#!/bin/bash
set -e

APP_DIR=/home/ec2-user/user-service

cd "$APP_DIR"

JAR=$(ls *.jar | head -1)

nohup java -jar "$JAR" > application.log 2>&1 &
