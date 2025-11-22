#!/bin/bash

###############################################################################
# Snort Alert Frequency Analysis Script
# Author: Inkwang Lee
# Purpose: Analyze Snort alert logs to identify top attack patterns
# Usage: ./alert-frequency-analysis.sh [path-to-alert-log]
# Example: ./alert-frequency-analysis.sh /var/log/snort/alert.log
###############################################################################

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Default alert log path
ALERT_LOG="${1:-/var/log/snort/alert.log}"

# Check if file exists
if [ ! -f "$ALERT_LOG" ]; then
    echo -e "${RED}Error: Alert log file not found: $ALERT_LOG${NC}"
    echo "Usage: $0 [path-to-alert-log]"
    exit 1
fi

echo -e "${GREEN}=====================================${NC}"
echo -e "${GREEN}Snort Alert Frequency Analysis${NC}"
echo -e "${GREEN}=====================================${NC}"
echo -e "Log file: ${YELLOW}$ALERT_LOG${NC}"
echo ""

# Count total alerts
TOTAL_ALERTS=$(grep -c "\[\*\*\]" "$ALERT_LOG")
echo -e "${YELLOW}Total Alerts: $TOTAL_ALERTS${NC}"
echo ""

# Analyze alert frequency by rule ID
echo -e "${GREEN}Top Attack Patterns (by frequency):${NC}"
echo "----------------------------------------"
cat "$ALERT_LOG" | \
    grep "\[\*\*\]" | \
    awk '{print $4}' | \
    sort | \
    uniq -c | \
    sort -nr | \
    head -20

echo ""
echo -e "${GREEN}Analysis complete!${NC}"

###############################################################################
# Explanation of the pipeline:
# 1. cat: Read the alert log file
# 2. grep "\[\*\*\]": Filter for alert header lines
# 3. awk '{print $4}': Extract the signature ID field
# 4. sort: Alphabetically sort IDs for counting
# 5. uniq -c: Count occurrences of each unique ID
# 6. sort -nr: Numerically sort in reverse (highest first)
# 7. head -20: Display top 20 results
###############################################################################
