#!/usr/bin/env bash
# Author: Aryan Kr Mishra
# Roll number: 2601730291
# Purpose: Print a formatted system information report.
set -euo pipefail

AUTHOR_NAME="Aryan Kr Mishra"
ROLL_NUMBER="2601730291"

echo "========================================"
echo "System Information Report"
echo "Name: $AUTHOR_NAME"
echo "Roll number: $ROLL_NUMBER"
echo "Date: $(date)"
echo "========================================"

if command -v lscpu >/dev/null 2>&1; then
  cpu_model=$(lscpu | awk -F: '/Model name/ {sub(/^[ \t]+/, "", $2); print $2; exit}')
  cpu_cores=$(lscpu | awk -F: '/^CPU\(s\)/ {gsub(/[ \t]/, "", $2); print $2; exit}')
else
  cpu_model=$(awk -F: '/model name/ {sub(/^[ \t]+/, "", $2); print $2; exit}' /proc/cpuinfo)
  cpu_cores=$(grep -c '^processor' /proc/cpuinfo)
fi
printf '\\nCPU model: %s\\nCPU cores/logical CPUs: %s\\n' "${cpu_model:-Unknown}" "${cpu_cores:-Unknown}"

echo
echo "Memory (total and used):"
free -h | awk 'NR==2 {printf "Total: %s\\nUsed: %s\\n", $2, $3}'

echo
echo "Top 3 processes by CPU usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -4

echo
echo "Report generated successfully."
