# Snort IDS Integration with Wazuh SIEM

## Overview

This guide explains how to integrate Snort IDS alerts into Wazuh SIEM for centralized monitoring and correlation.

## Architecture
```
[Snort IDS] → [Alert Logs] → [Wazuh Agent] → [Wazuh Manager] → [Elasticsearch] → [Kibana Dashboard]
```

## Configuration Steps

### Step 1: Configure Snort Log Output

Ensure Snort outputs to a consistent location:
```bash
# /etc/snort/snort.conf
output alert_full: /var/log/snort/alert.log
output alert_fast: /var/log/snort/alert.fast
output alert_csv: /var/log/snort/alert.csv timestamp,sig_id,msg,proto,src,dst
```

### Step 2: Configure Wazuh Agent

Edit `/var/ossec/etc/ossec.conf` on the system running Snort:
```xml
<localfile>
  <log_format>full_command</log_format>
  <location>/var/log/snort/alert.log</location>
  <alias>snort-alerts</alias>
</localfile>

<localfile>
  <log_format>csv</log_format>
  <location>/var/log/snort/alert.csv</location>
  <alias>snort-csv</alias>
</localfile>
```

### Step 3: Create Wazuh Decoder

Create `/var/ossec/etc/decoders/snort_decoders.xml` on Wazuh Manager:
```xml
<decoder name="snort">
  <prematch>^\[\*\*\]</prematch>
</decoder>

<decoder name="snort-alert">
  <parent>snort</parent>
  <regex offset="after_prematch">^\s*\[(\d+):(\d+):(\d+)\]\s+(\.+)</regex>
  <order>gid,sid,rev,msg</order>
</decoder>
```

### Step 4: Create Wazuh Rules

Create `/var/ossec/etc/rules/snort_rules.xml`:
```xml
<group name="snort,">
  <!-- ICMP Detection -->
  <rule id="100010" level="5">
    <decoded_as>snort</decoded_as>
    <match>1:1000001:</match>
    <description>Snort: ICMP Traffic Detected</description>
    <group>reconnaissance,</group>
  </rule>

  <!-- SSH Brute Force -->
  <rule id="100011" level="10">
    <decoded_as>snort</decoded_as>
    <match>1:1000002:</match>
    <description>Snort: SSH Brute Force Attack Detected</description>
    <mitre>
      <id>T1110</id>
    </mitre>
    <group>attack,</group>
  </rule>

  <!-- Port Scan -->
  <rule id="100012" level="8">
    <decoded_as>snort</decoded_as>
    <match>1:1000003:</match>
    <description>Snort: Port Scan Detected</description>
    <mitre>
      <id>T1046</id>
    </mitre>
    <group>reconnaissance,</group>
  </rule>

  <!-- DDoS -->
  <rule id="100013" level="12">
    <decoded_as>snort</decoded_as>
    <match>1:1000004:</match>
    <description>Snort: ICMP Flood DDoS Attack Detected</description>
    <mitre>
      <id>T1498</id>
    </mitre>
    <group>dos,</group>
  </rule>
</group>
```

### Step 5: Restart Services
```bash
# Restart Wazuh Manager
sudo systemctl restart wazuh-manager

# Restart Wazuh Agent (on Snort system)
sudo systemctl restart wazuh-agent
```

## Verification

### Check Wazuh Agent Connection
```bash
sudo /var/ossec/bin/agent_control -l
# Should show agent connected
```

### Test Alert Flow
```bash
# Generate Snort alert
ping -c 10 <monitored_ip>

# Check Wazuh alerts
sudo tail -f /var/ossec/logs/alerts/alerts.log | grep snort
```

## Benefits

1. **Centralized Monitoring:** All security events in one place
2. **Correlation:** Connect Snort network alerts with endpoint events
3. **Enrichment:** Add MITRE ATT&CK context to network alerts
4. **Unified Dashboard:** Single pane of glass for SOC analysts

## Example Correlation Scenario
```
Snort Alert: SSH Brute Force (SID:1000002)
    ↓
Wazuh Correlates with:
    - Auth.log: Multiple failed SSH attempts
    - FIM: No suspicious file changes (attack failed)
    - MITRE: T1110 (Brute Force)
    ↓
Automated Response:
    - fail2ban blocks attacker IP
    - SOC analyst notified
    - Incident ticket created
```

## Troubleshooting

### Alerts Not Appearing
```bash
# Check Snort is writing logs
ls -lh /var/log/snort/alert.log

# Check Wazuh agent can read logs
sudo -u ossec cat /var/log/snort/alert.log

# Check Wazuh log for errors
sudo tail -f /var/ossec/logs/ossec.log
```

### Permission Issues
```bash
# Add ossec user to snort group
sudo usermod -a -G snort ossec

# Set proper permissions
sudo chmod 644 /var/log/snort/alert.log
```
