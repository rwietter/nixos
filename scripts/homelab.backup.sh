#!/usr/bin/env bash

set -e
set -o pipefail

DB_FILES=(
  "/home/rwietter/homelab/data/beszel/data/data.db"
  "/home/rwietter/homelab/data/linkding/db.sqlite3"
  "/home/rwietter/homelab/data/speedtest/database.sqlite"
  "/home/rwietter/homelab/data/uptime-kuma/kuma.db"
)

# Temporary directory for backups
BACKUP_DIR="/tmp/sqlite_backups"

# rclone configuration (remote:folder)
RCLONE_REMOTE="koofr:homelab/db"

# NTFY topic for notifications
NTFY_TOPIC="homelab_nRek2nU9gqZjRK"

# LOG FILE (optional, can be used for debugging)
LOG_FILE="/var/log/homelab_backup.log"

# ------------------------------------------------------------------ #

# Refactor to english and improve text
notify_failure() {
  ERROR_CODE=$1
  curl -H "Title: HOMELAB BACKUP FAILED! " \
       -H "Priority: urgent" \
       -H "Tags: skull,backup,database,red_circle" \
       -d "The backup script failed with error code ${ERROR_CODE}." \
       ntfy.sh/${NTFY_TOPIC}
}

notify_success() {
  ARCHIVE_NAME=$1
  curl -H "Title: HOMELAB BACKUP SUCCESS! " \
       -H "Priority: default" \
       -H "Tags: backup,database,green_circle" \
       -d "Backup ${ARCHIVE_NAME} uploaded to the cloud successfully." \
       ntfy.sh/${NTFY_TOPIC}
}

# TRAP: If the script exits with an error (non-zero exit code), the notify_failure function will be called.
trap 'notify_failure $?' EXIT

echo "Starting backup process at $(date)" | tee -a "${LOG_FILE}"

# Clean up and create the backup directory
rm -rf "${BACKUP_DIR}"
mkdir -p "${BACKUP_DIR}"

# Array to hold backed up files
declare -a app_directories=()

# Backup each database
for db_file in "${DB_FILES[@]}"; do
  if [ -f "$db_file" ]; then
    original_filename=$(basename "$db_file")
    app_name=$(echo "$db_file" | awk -F'/' '{print $6}')

    # Create the subdirectory for the app inside the backup folder
    mkdir -p "${BACKUP_DIR}/${app_name}"

    echo "Backing up ${original_filename} from ${app_name} into folder..." | tee -a "${LOG_FILE}"

    # Save the backup inside its respective folder
    sqlite3 "$db_file" ".backup '${BACKUP_DIR}/${app_name}/${original_filename}'"

    # Add the app directory name to the list if it's not already there
    # (Avoid duplicates if an app has multiple DB files)
    if [[ ! " ${app_directories[@]} " =~ " ${app_name} " ]]; then
      app_directories+=("$app_name")
    fi
  else
    echo "WARNING: Database file not found: $db_file" | tee -a "${LOG_FILE}"
  fi
done

echo "${#app_directories[@]} database files found for backup." | tee -a "${LOG_FILE}"

if [ ${#app_directories[@]} -eq 0 ]; then
  # Disable the trap so it doesn't notify failure in an expected case
  echo "No database files found for backup. Exiting." | tee -a "${LOG_FILE}"
  trap - EXIT
  exit 0
fi

# Create a single compressed file with all backups
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
ARCHIVE_NAME="homelab_backup_${TIMESTAMP}.tar.gz"
echo "Creating compressed file: ${ARCHIVE_NAME}" | tee -a "${LOG_FILE}"
tar -czf "${BACKUP_DIR}/${ARCHIVE_NAME}" -C "${BACKUP_DIR}" "${app_directories[@]}"

# Send the file to the cloud using rclone
echo "Sending ${ARCHIVE_NAME} to the cloud via rclone..." | tee -a "${LOG_FILE}"
rclone copy "${BACKUP_DIR}/${ARCHIVE_NAME}" "${RCLONE_REMOTE}" --progress

echo "Cleaning up local directory..." | tee -a "${LOG_FILE}"
rm -rf "${BACKUP_DIR}"

# If we reached this point, everything went well.
# Disable the failure trap so it doesn't trigger on normal exit.
trap - EXIT

# Send success notification
notify_success "${ARCHIVE_NAME}"

echo "Backup process completed successfully!" | tee -a "${LOG_FILE}"

exit 0
