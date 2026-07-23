#!/bin/bash
set -e

echo "===== Validating Application ====="

sleep 15

PID=$(pgrep -f "rest-service-complete-0.0.1-SNAPSHOT.jar")

if [ -z "$PID" ]; then
    echo "Application failed to start."
    exit 1
else
    echo "Application is running with PID: $PID"
fi

echo "===== Validation Successful ====="

exit 0
