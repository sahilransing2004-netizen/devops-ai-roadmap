#!/bin/bash

echo "=== System Health Report ==="
echo ""

echo "--- Top 5 Memory-Consuming Processes ---"
ps aux --sort=-%mem | head -6

echo ""
echo "--- Disk Usage ---"
df -h | grep -E "/$|/mnt/c"

echo ""
echo "--- Current Directory Size ---"
du -sh .

echo ""
echo "--- Running Background Jobs ---"
jobs
