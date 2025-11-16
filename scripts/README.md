# Automation Scripts

Scripts for log analysis, alert processing, and security automation.

## Current Scripts

### `alert-frequency-analysis.sh`
Bash script for analyzing Snort alert frequency and identifying top attack patterns.

**Usage:**
```bash
./alert-frequency-analysis.sh /var/log/snort/alert.log
```

## Planned Development

### `log-parser.py` (In Progress)
Python-based Wazuh log parser with MITRE ATT&CK mapping capabilities.

### `mitre-mapping-tool.py` (Planned)
Automated tool for mapping security events to MITRE ATT&CK framework.

**Tech Stack:** Python 3.x, regex, json, pandas
