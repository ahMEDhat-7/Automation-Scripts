#!/bin/bash

# Variables

SOURCE_DIR="/etc/backup/"
LOG_FILE="backup.log"
DIST_DIR="/home/calmwolf/whereToBackup"
MAX_SIZE_LOG=5000000 # 5 MB
MAZ_AGE_LOG=


# Functions

perform_backup() {

        rsync -avz "$SOURCE_DIR" "$DIST_DIR" > "$LOG_FILE" 2>&1
        if [ $? -eq 0 ];
        then
                echo "Backup successful: $(date)" >> "$LOG_FILE"
        else
                echo "Backup failed: $(date)" >> "$LOG_FILE"
        fi
}



# Run

perform_backup
