#!/usr/bin/env bash
# Author: Aryan Kr Mishra
# Roll number: 2601730291
# Purpose: Create a timestamped compressed backup of a folder.
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: ./backup.sh <folder>" >&2
  exit 1
fi

source_dir=$1
if [[ ! -d "$source_dir" ]]; then
  echo "Error: folder does not exist: $source_dir" >&2
  exit 1
fi

backup_dir="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$backup_dir"
timestamp=$(date '+%Y-%m-%d_%H-%M-%S')
archive="$backup_dir/backup_${timestamp}.tar.gz"

if tar -czf "$archive" -C "$(dirname "$source_dir")" "$(basename "$source_dir")"; then
  size=$(du -h "$archive" | awk '{print $1}')
  echo "Backup successful: $archive (size: $size)"
  printf '%s SUCCESS %s %s\\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$archive" "$size" >> "$backup_dir/backup.log"
else
  printf '%s FAILURE %s\\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$source_dir" >> "$backup_dir/backup.log"
  echo "Error: backup failed." >&2
  exit 1
fi
