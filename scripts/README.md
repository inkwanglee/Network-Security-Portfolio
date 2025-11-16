# Automation Scripts

Scripts for log analysis, alert processing, and security automation.

## Current Scripts

### `alert-frequency-analysis.sh`
Bash script for analyzing Snort alert frequency and identifying top attack patterns.

**Features:**
- Counts total alerts in Snort log files
- Identifies top 20 most triggered detection rules
- Color-coded output for easy reading
- Customizable log file path

**Usage:**
```bash
# Make script executable
chmod +x alert-frequency-analysis.sh

# Run with default path
./alert-frequency-analysis.sh

# Run with custom log path
./alert-frequency-analysis.sh /path/to/your/alert.log
```

**Output Example:**
```
=====================================
Snort Alert Frequency Analysis
=====================================
Log file: /var/log/snort/alert.log

Total Alerts: 425485

Top Attack Patterns (by frequency):
----------------------------------------
425485 [1:1000001:1]  # ICMP Traffic
   257 [1:1000002:1]  # SSH Brute Force
    50 [1:1000003:1]  # Port Scan
    12 [1:1000004:1]  # ICMP Flood
```

## Planned Development

### `log-parser.py` (In Progress)
Python-based Wazuh log parser with MITRE ATT&CK mapping capabilities.

**Planned Features:**
- JSON log parsing
- Automated MITRE technique classification
- CSV export for reporting
- Integration with threat intelligence feeds

### `mitre-mapping-tool.py` (Planned)
Automated tool for mapping security events to MITRE ATT&CK framework.

**Tech Stack:** Python 3.x, regex, json, pandas
