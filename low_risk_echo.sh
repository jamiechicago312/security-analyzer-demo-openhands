#!/usr/bin/env bash
# LOW RISK DEMO SCRIPT
#
# PURPOSE: This script demonstrates operations that trigger OpenHands' LOW security risk warnings
#
# WHAT MAKES THIS LOW RISK:
# - Only performs read-only operations within the sandbox environment
# - Prints static, non-sensitive information to stdout
# - No network access, file system modifications, or privileged operations
# - No access to sensitive data or credentials
#
# SAFETY: Completely safe to execute - performs only basic output operations
#
# DEMO USAGE: Ask OpenHands to execute this file to see LOW risk security warnings

echo "=== LOW RISK DEMO SCRIPT EXECUTION ==="
echo "Hello from the OpenHands security analyzer demo!"
echo "This is a static, non-sensitive output that demonstrates LOW risk operations."
echo "Current timestamp: $(date)"
# Portable script path resolution that works on Linux, macOS, and WSL
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"
SCRIPT_PATH="$SCRIPT_DIR/$(basename "${BASH_SOURCE[0]:-$0}")"
echo "Script location: $SCRIPT_PATH"
echo "=== LOW RISK DEMO COMPLETED ==="
