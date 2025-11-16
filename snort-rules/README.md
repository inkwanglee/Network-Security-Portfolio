# Snort Detection Rules

Custom Snort IDS rules developed for detecting common attack patterns in network traffic.

## Rules Overview

| Rule File | Attack Type | MITRE Technique | Description |
|-----------|-------------|-----------------|-------------|
| `icmp-detection.rules` | Reconnaissance | - | Detects ICMP traffic for network mapping |
| `ssh-bruteforce.rules` | Credential Access | T1110 | Threshold-based SSH brute force detection |
| `port-scan.rules` | Discovery | T1046 | SYN scan detection with threshold |
| `ddos-flood.rules` | Impact | T1498 | ICMP flood DDoS detection |

## Usage
```bash
# Include in snort.conf
include $RULE_PATH/local.rules
```

## Testing Environment

These rules were developed and tested in a controlled lab environment using:
- Snort 2.9.x
- Ubuntu 24.04 LTS
- Metasploitable 2 (target)
- Kali Linux (attacker simulation)

**Note:** Rules should be tuned for your specific environment to minimize false positives.
