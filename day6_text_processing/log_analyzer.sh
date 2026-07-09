#!/bin/bash

LOG_FILE="sample_backup.log"

echo "=== Log Analysis Report ==="
echo ""

echo "Total lines: $(wc -l < $LOG_FILE)"
echo "ERROR count: $(grep -c "ERROR" $LOG_FILE)"
echo "INFO count: $(grep -c "INFO" $LOG_FILE)"
echo "WARNING count: $(grep -c "WARNING" $LOG_FILE)"

echo ""
echo "=== All ERROR messages ==="
grep "ERROR" $LOG_FILE | awk '{print $2, $4, $5, $6}'
