#!/bin/bash

# Only works on Mac to convert datetime
if [ -z "$1" ]; then
    echo "Example: dt_convert_cn.sh '2024-07-23 15:00:00'"
    echo "convert current date time"
    beijing_time=$(date +'%Y-%m-%d %H:%M:%S')
else
    beijing_time="$1"
fi

# Convert Beijing time to PST
pst_time=$(TZ="America/Los_Angeles" date -j -f "%Y-%m-%d %H:%M:%S" "$beijing_time" +'%Y-%m-%d %H:%M:%S' | TZ=Asia/Shanghai date +'%Y-%m-%d %H:%M:%S' | TZ="America/Los_Angeles" date +'%Y-%m-%d %H:%M:%S')

# Convert Beijing time to CST (U.S. Central Standard Time)
us_cst_time=$(TZ="America/Chicago" date -j -f "%Y-%m-%d %H:%M:%S" "$beijing_time" +'%Y-%m-%d %H:%M:%S' | TZ=Asia/Shanghai date +'%Y-%m-%d %H:%M:%S' | TZ="America/Chicago" date +'%Y-%m-%d %H:%M:%S')

# Output the results
echo "Beijing time: $beijing_time"
echo "Pacific Standard Time: $pst_time"
echo "Central Standard Time: $us_cst_time"