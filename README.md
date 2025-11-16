# Network Security & SOC Operations Portfolio

**Inkwang Lee** | Bachelor of IT (Network & Security Minor) | Queensland University of Technology

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue)](https://www.linkedin.com/in/inkwanglee/)
[![Email](https://img.shields.io/badge/Email-inkwang616%40gmail.com-red)](mailto:inkwang616@gmail.com)

---

## 🎯 About This Portfolio

This repository showcases my hands-on experience in **Security Operations Center (SOC) detection engineering**, **SIEM implementation**, and **MITRE ATT&CK framework integration**, developed through academic projects at QUT and continuous self-directed learning in cybersecurity defense.

**Key Focus Areas:**
- Intrusion Detection & Prevention Systems (IDS/IPS)
- Security Information and Event Management (SIEM)
- Threat Intelligence & MITRE ATT&CK Mapping
- Network Security Architecture
- Security Automation & Orchestration

---

## 🏆 Featured Project: SOC Detection Rules & MITRE Framework Mapping

**Course:** CAB441 - Network Security (QUT)  
**Achievement:** 40/40 (100%) on major security controls deployment assignment  
**Duration:** October 2025  

### Project Overview

Designed and implemented a comprehensive security monitoring infrastructure involving:

1. **Vulnerability Management**
   - Performed network reconnaissance using Nmap against deliberately vulnerable systems
   - Prioritized vulnerabilities using CVSS scoring and NVD database
   - Identified and analyzed top 5 critical services (vsftpd, Samba, distccd, UnrealIRCd, PostgreSQL)

2. **Intrusion Detection System (Snort)**
   - Deployed Snort IDS with custom detection rules
   - Configured multi-format logging (full, fast, CSV) for SIEM integration
   - Implemented automated alert frequency analysis using bash scripting

3. **SIEM Implementation (Wazuh)**
   - Deployed multi-agent Wazuh environment for centralized log management
   - Configured real-time threat correlation across distributed endpoints
   - Established asset inventory and network visibility dashboards

4. **MITRE ATT&CK Integration**
   - Mapped security events to MITRE ATT&CK framework
   - Documented techniques: Password Spraying (T1110.003), Spearphishing Attachment (T1566.001)
   - Identified associated threat actor groups (APT28, APT29, Lazarus Group)

5. **Proxy & Network Security Controls**
   - Implemented Nginx reverse proxy with TLS termination
   - Configured mitmproxy for forward proxy with content filtering
   - Demonstrated CIA triad principles through practical security architecture

### Technologies & Tools

**Security Platforms:**
- Snort IDS/IPS
- Wazuh SIEM
- Elasticsearch

**Assessment Tools:**
- Nmap
- OpenVAS
- Metasploit Framework
- Wireshark

**Infrastructure:**
- Linux (Ubuntu, Kali)
- VirtualBox
- Nginx
- mitmproxy
- iptables

**Automation:**
- Bash scripting
- Python (development in progress)

### Key Achievements

✅ Developed **4 custom Snort detection rules** covering:
- ICMP reconnaissance detection
- SSH brute force attacks (threshold-based)
- Port scanning activity (SYN flood detection)
- ICMP DDoS flood attacks

✅ Implemented **automated alert analysis** using bash (grep, awk, sort, uniq)

✅ **Mapped security events to MITRE ATT&CK** with threat intelligence context

✅ Designed **complementary security controls**:
- fail2ban integration for automated response
- Network segmentation with VLAN isolation
- Endpoint Detection and Response (EDR) integration strategy

---

## 📁 Repository Structure
```
Network-Security-Portfolio/
│
├── snort-rules/          # Custom Snort detection rules with documentation
├── wazuh-config/         # Wazuh SIEM configuration files and deployment guides
├── scripts/              # Automation scripts for log analysis
├── documentation/        # Technical documentation and architecture diagrams
└── mitre-mapping/        # MITRE ATT&CK framework mapping and threat intelligence
```

### Coming Soon
- Python-based log parsing and analysis tools
- MITRE ATT&CK automated mapping scripts
- Extended detection rule library
- SOC playbook documentation

---

## 🔒 Security & Privacy Note

This portfolio contains sanitized versions of academic projects. Sensitive information including:
- Specific IP addresses and network topology
- Detailed vulnerability exploitation procedures
- Organization-specific security configurations

...have been generalized or removed to maintain security best practices while demonstrating technical competency.

---

## 🎓 Academic Background

**Bachelor of Information Technology** - Queensland University of Technology  
**Expected Graduation:** June 2026  
**Specialization:** Network and Security Minor

**Relevant Coursework:**
- CAB441: Network Security
- CAB440: Network & Systems Administration
- ITD240: Cyber Security
- CAB432: Cloud Computing
- CAB230: Web Computing
- ITD104: Building IT Systems(Python Fundamental)

**Technical Skills:**
- **Languages:** Python, Bash, SQL, C
- **Cybersecurity:** SIEM, IDS/IPS, Penetration Testing, Vulnerability Assessment
- **Networking:** TCP/IP, VLANs, Firewalls, VPN, Network Segmentation
- **Systems:** Linux Administration, Windows Server, Virtualization
- **Cloud:** AWS (EC2, S3, IAM basics)

---

## 📫 Contact & Professional Links

- **Email:** inkwang616@gmail.com
- **Phone:** +61 423 969 881
- **Location:** Brisbane, Queensland, Australia
- **LinkedIn:** https://www.linkedin.com/in/inkwanglee/
- **Resume:** [Resume (PDF)](./Inkwang_Lee_Resume_Cybersecurity.pdf)

---

## 🚀 Career Objectives

Seeking opportunities in **SOC operations**, **defensive cybersecurity**, and **security engineering** roles where I can apply my technical knowledge in SIEM platforms, intrusion detection, and threat intelligence to protect organizational assets. Particularly interested in roles involving:

- Security Operations Center (SOC) analysis
- SIEM platform management and rule development
- Threat hunting and incident response
- Security automation and orchestration

---

## 📊 Current Status

🎓 **Final Year Student** - Graduating June 2026  
💼 **Actively Seeking:** Cybersecurity Internship/Graduate Opportunities  
🔍 **Available:** Part-time or casual work during studies, full-time after graduation  
🚗 **Mobility:** Own vehicle, willing to work on-site in Brisbane area

---

**Last Updated:** November 2025

*This portfolio is actively maintained and regularly updated with new projects and learning experiences.*
