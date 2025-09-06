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
echo "Script location: $(pwd)/$(basename "$0")"
echo "=== LOW RISK DEMO COMPLETED ==="
