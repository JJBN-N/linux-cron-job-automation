#!/bin/bash

SOURCE="$HOME/cron-lab/data"
DEST="$HOME/cron-lab/backups"

mkdir -p "$DEST"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)

tar -czf "$DEST/backup_$TIMESTAMP.tar.gz" -C "$SOURCE" .

echo "Backup completed: $TIMESTAMP" >> "$HOME/cron-lab/logs/backup.log"
