#!/usr/bin/env bash
# MEDIUM RISK DEMO SCRIPT
#
# PURPOSE: This script demonstrates operations that trigger OpenHands' MEDIUM security risk warnings
#
# WHAT MAKES THIS MEDIUM RISK:
# - Modifies files within the container/workspace environment
# - Writes data to the file system (creates/appends to files)
# - Changes the state of the working directory
# - Installs or modifies system-level components within the container
#
# SAFETY: Safe to run - only creates demo files within the current directory
# Note: Will create/modify files in your workspace, but no sensitive operations
#
# DEMO USAGE: Ask OpenHands to execute this file to see MEDIUM risk security warnings

echo "=== MEDIUM RISK DEMO SCRIPT EXECUTION ==="
echo "This script will modify files in the current workspace..."

# Create a demo log file (file system modification)
echo "Demo log entry created at: $(date)" >> ./demo_output.log
echo "OpenHands security analyzer demo - MEDIUM risk operation" >> ./demo_output.log

# Create a temporary demo file
echo "Temporary demo data" > ./temp_demo_file.txt

# This will trigger MEDIUM risk warnings - package installation attempt
echo "Attempting to install demo package..."
pip install --dry-run requests 2>/dev/null || echo "Package installation simulated (pip not available or dry-run failed)"

echo "Files created/modified:"
echo "- ./demo_output.log (appended log entries)"
echo "- ./temp_demo_file.txt (created temporary file)"
echo "=== MEDIUM RISK DEMO COMPLETED ==="
