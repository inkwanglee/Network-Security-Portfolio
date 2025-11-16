# MITRE ATT&CK Framework Mapping

Documentation of security events mapped to MITRE ATT&CK techniques with threat intelligence context.

## Documented Techniques

### T1110.003 - Password Spraying
- **Tactic:** Credential Access
- **Detection:** Threshold-based authentication failure monitoring
- **Associated Groups:** APT28, APT29, Lazarus Group
- **Mitigation:** MFA, account lockout policies, monitoring

### T1566.001 - Spearphishing Attachment
- **Tactic:** Initial Access
- **Detection:** Email attachment analysis, sandboxing
- **Associated Groups:** APT1, APT28, APT32
- **Mitigation:** User training, email security gateways, endpoint protection

## Integration with SIEM

Mapping enables:
- Contextual alert enrichment
- Threat actor profiling
- Gap analysis for detection coverage
- Informed security control deployment
```

---

## Step 4: CAB441 자료에서 추출할 것들 (30분)

### 보고서 PDF에서 가져올 것:

1. **Snort Rules** (Figure 11에서):
```
alert icmp any any -> 192.168.1.0/24 any (msg:"ICMP Traffic Detected"; sid:1000001; rev:1;)
