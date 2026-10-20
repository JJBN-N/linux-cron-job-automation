
#!/bin/bash

LOG="$HOME/cron-lab/logs/error.log"

echo "Starting script: $(date)"

# Intentionally generate an error
ls /this_folder_does_not_exist 2>> "$LOG"

echo "Script finished: $(date)"
