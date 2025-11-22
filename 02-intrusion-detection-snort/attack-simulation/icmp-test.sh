#!/bin/bash
# ICMP Reconnaissance Test
# Usage: ./icmp-test.sh <target_ip>

TARGET=${1:-172.0.0.2}
COUNT=${2:-50}

echo "🎯 ICMP Reconnaissance Test"
echo "Target: $TARGET"
echo "Packets: $COUNT"
echo ""
echo "Starting ping flood in 3 seconds..."
sleep 3

ping -c $COUNT $TARGET

echo ""
echo "✅ Test complete. Check Snort alerts for SID:1000001"
