#!/bin/bash

# This script creates a backup of a database and saves it to a file
# The backup is then uploaded to a remote server via SCP

# Set variables
DB_NAME="mydatabase"
DB_USER="root"
DB_PASS="mypassword"
BACKUP_DIR="/backups"
BACKUP_FILE="$BACKUP_DIR/backup-$(date +%Y-%m-%d-%H-%M-%S).sql.gz"
REMOTE_USER="user"
REMOTE_HOST="example.com"
REMOTE_DIR="/backups"

# Dump the database and compress it
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME | gzip > $BACKUP_FILE

# Upload the backup to the remote server
scp $BACKUP_FILE $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR

# Remove backups older than 7 days
find $BACKUP_DIR -type f -name "backup-*.sql.gz" -mtime +7 -exec rm {} \;
