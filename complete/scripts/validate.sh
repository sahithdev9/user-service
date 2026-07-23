#!/bin/bash

echo "===== Validating Application ====="

sleep 15

PID=$(pgrep -f app.jar)

if [ -z "$PID" ]; then
    echo "Application failed to start."
    exit 1
else
    echo "Application is running with PID: $PID"
fi

echo "===== Validation Successful ====="

exit 0
