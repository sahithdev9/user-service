#!/bin/bash

echo "===== Stopping Application ====="

PID=$(pgrep -f app.jar)

if [ -z "$PID" ]; then
    echo "Application is not running."
else
    echo "Stopping application with PID: $PID"
    kill -9 $PID
fi

echo "===== Stop Completed ====="
