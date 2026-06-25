#!/bin/bash

if [ -f "sysinfo.sh" ]; then
    echo "sysinfo.sh EXISTS"
else
    echo "sysinfo.sh NOT FOUND"
fi
for i in 1 2 3 4 5
do
    echo "This is line number $i"
done