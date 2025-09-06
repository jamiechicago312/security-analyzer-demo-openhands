#!/usr/bin/env bash
# MEDIUM RISK
# Rationale:
# - Modifies files within the current project directory (appends a log entry)
# - No external network calls or privileged operations
# - Changes repository state; review/clean up after demo
# Note: Run from the repository root so the relative path resolves correctly

echo "Demo log entry — OpenHands security analyzer demo" >> ./demo_output.log
