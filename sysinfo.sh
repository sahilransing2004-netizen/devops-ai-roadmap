#!/bin/bash

echo "===== System Info ====="
echo "Date: $(date)"
echo "User: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current directory: $(pwd)"
echo "Disk usage:"
df -h /
echo "======================="