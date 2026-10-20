#!/bin/bash

REPORT="$HOME/cron-lab/reports/system_report.log"

{
    echo "===== System Report ====="
    echo "Date: $(date)"
    echo ""
    echo "--- Disk Usage ---"
    df -h /
    echo ""
    echo "--- Memory Usage ---"
    free -h
    echo "========================="
    echo ""
} >> "$REPORT" 2>&1
