#!/bin/bash

echo "======================================"
echo "       SMART SYSTEM CHECK"
echo "======================================"
echo ""

#!/bin/bash

echo "======================================"
echo "       SMART SYSTEM CHECK"
echo "======================================"
echo ""

# Step 1: Check if a logs folder exists, if not create it
if [ -d "logs" ]; then
    echo "logs folder EXISTS"
else
    echo "logs folder NOT FOUND - creating it..."
    mkdir logs
    echo "logs folder CREATED"
fi

echo ""

# Step 2: Check multiple files in a loop
echo "--- Checking important files ---"
for file in sysinfo.sh check.sh README.md
do
    if [ -f "$file" ]; then
        echo "$file EXISTS"
    else
        echo "$file NOT FOUND"
    fi
done

echo ""

# Step 3: Print system info at the end
echo "--- System Report ---"
echo "User: $(whoami)"
echo "Date: $(date)"
echo "Disk usage:"
df -h /
echo "======================================"