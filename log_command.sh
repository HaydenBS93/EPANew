#!/bin/bash

# Define log file path
LOG_FILE="/root/EPANew/command_log.txt"

# Append the command with timestamp to the log file
echo "[$(date)] $BASH_COMMAND" >> "$LOG_FILE"

