#!/bin/bash
###############################################################################
# Port Scanning Attack Simulation
# Author: Inkwang Lee
# Purpose: Demonstrate Snort detection of port scanning (Rule 1000003)
###############################################################################

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

TARGET=${1:-172.0.0.2}

echo -e "${GREEN}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║         Port Scanning Attack Simulation               ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════╝${NC}"
echo ""

# Check nmap installed
if ! command -v nmap &> /dev/null; then
    echo -e "${RED}❌ Nmap not found. Install: sudo apt install nmap${NC}"
    exit 1
fi

echo -e "${YELLOW}Attack Type:${NC} SYN Stealth Scan"
echo -e "${YELLOW}Target:${NC} $TARGET"
echo -e "${YELLOW}Ports:${NC} 1-1000"
echo -e "${YELLOW}Speed:${NC} T4 (Aggressive)"
echo ""

echo -e "${GREEN}🔍 Launching port scan...${NC}"
echo ""

# Execute scan
sudo nmap -sS -p 1-1000 -T4 $TARGET --open

echo ""
echo -e "${GREEN}✅ Scan complete${NC}"
echo ""
echo -e "${YELLOW}Expected Snort Detection:${NC}"
echo "  Rule:     1000003 (Port Scan)"
echo "  Trigger:  20+ SYN packets within 10 seconds"
echo "  MITRE:    T1046 (Network Service Scanning)"
echo ""
echo -e "${YELLOW}Verification:${NC}"
echo "  sudo cat /var/log/snort/alert | grep 1000003"
echo ""
