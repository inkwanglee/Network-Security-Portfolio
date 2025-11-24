# 🔐 Network Security Portfolio

> **CAB441 Network Security | Queensland University of Technology**  
> Grade: **40/40 (40% full mark of the total grade)**

[![GitHub](https://img.shields.io/badge/GitHub-inkwanglee-blue?logo=github)](https://github.com/inkwanglee)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?logo=linkedin)](https://www.linkedin.com/in/inkwanglee)
[![Email](https://img.shields.io/badge/Email-inkwang616%40gmail.com-red?logo=gmail)](mailto:inkwang616@gmail.com)

---

## 👨‍💻 About Me

**Inkwang Lee**  

Aspiring **SOC Analyst / Cybersecurity Engineer** seeking internship opportunities in Australia. Passionate about threat detection, incident response, and security automation.

## 🎓 Academic Background

**Bachelor of Information Technology** - Queensland University of Technology  
**Expected Graduation:** July 2026  
**Major:** Computer Science
**Specialization:** Network and Security Minor

**Relevant Coursework:**
- CAB441: Network Security
- CAB440: Network & Systems Administration
- ITD240: Cyber Security
- CAB432: Cloud Computing
- CAB230: Web Computing
- CAB222: Networks
- IFB452: Blockchain Technology
- IFB220: Introduction to AI for IT Professionals
- ITD104: Building IT Systems(Python Fundamental)

**Technical Skills:**
- **Languages:** Python, Bash, SQL, C
- **Cybersecurity:** SIEM, IDS/IPS, Penetration Testing, Vulnerability Assessment
- **Networking:** TCP/IP, VLANs, Firewalls, VPN, Network Segmentation
- **Systems:** Linux Administration, Windows Server, Virtualization
- **Cloud:** AWS (EC2, S3, IAM basics)

---

## 🎯 Portfolio Overview

This repository showcases **hands-on cybersecurity projects** demonstrating proficiency in:
- ✅ Vulnerability Assessment & Management
- ✅ Intrusion Detection Systems (IDS/IPS)
- ✅ Proxy Architecture & Network Security
- ✅ SIEM Deployment & Threat Correlation
- ✅ MITRE ATT&CK Framework Integration

**Key Achievement:** Achieved **100% detection rate** across all simulated attacks using custom Snort rules and Wazuh SIEM correlation.

---

## 📂 Portfolio Structure

### [📁 Portfolio 1: Vulnerability Management](01-vulnerability-management/)
**Skills:** Nmap reconnaissance, CVE correlation, CVSS prioritization, risk assessment

<details>
<summary><b>🔍 View Highlights</b></summary>

- **Tools Used:** Nmap 7.94SVN, NVD Database, CVSS Calculator
- **Methodology:** Network scanning → Service enumeration → Vulnerability intelligence → Risk prioritization
- **Key Finding:** Identified **CVE-2011-2523** (vsftpd backdoor, CVSS 9.8/10.0) with remote code execution capability
- **Impact:** Developed risk-based remediation roadmap prioritizing 5 critical vulnerabilities

**Top Vulnerabilities Identified:**
| CVE | Service | CVSS | Impact |
|-----|---------|------|--------|
| CVE-2011-2523 | vsftpd 2.3.4 | 9.8 | Backdoor command execution |
| CVE-2004-2687 | distccd | 9.3 | Remote code execution |
| CVE-2010-2075 | UnrealIRCd | 7.5 | Trojanized binary |

**Deliverables:**
- 📄 [Complete Vulnerability Assessment Guide](01-vulnerability-management/README.md)
- 📄 [Top 5 Vulnerabilities Analysis](01-vulnerability-management/top5-vulnerabilities.md)
- 🛠️ [Automated Nmap Scan Script](01-vulnerability-management/nmap-scan-demo.sh)
- 🐍 [Python Vulnerability Report Generator](01-vulnerability-management/vulnerability-report.py)

</details>

---

### [📁 Portfolio 2: Intrusion Detection (Snort)](02-intrusion-detection-snort/)
**Skills:** IDS rule development, attack simulation, threat detection, MITRE ATT&CK mapping

<details>
<summary><b>🔍 View Highlights</b></summary>

- **Tools Used:** Snort 2.9.20, Hydra, Nmap, hping3
- **Custom Rules:** 4 detection rules with 100% success rate
- **Attack Simulations:** ICMP reconnaissance, SSH brute force, port scanning, DDoS flood
- **MITRE Mapping:** T1110.003 (Password Spraying), T1046 (Network Service Scanning)

**Detection Rules Created:**

| Rule ID | Technique | Threshold Logic | Detection Rate |
|---------|-----------|-----------------|----------------|
| 1000001 | ICMP Reconnaissance | Any ICMP traffic | ✅ 100% |
| 1000002 | SSH Brute Force | 5 attempts / 60s | ✅ 100% |
| 1000003 | Port Scanning | 20 SYN packets / 10s | ✅ 100% |
| 1000004 | ICMP Flood DDoS | 50 packets / 5s | ✅ 100% |

**Alert Statistics:**
- 📊 **425,485 ICMP alerts** (reconnaissance detection)
- 📊 **257 SSH brute force alerts** (credential access)
- 📊 **50 port scan alerts** (discovery phase)

**Deliverables:**
- 📄 [Complete Snort IDS Guide](02-intrusion-detection-snort/README.md)
- 🛡️ [Custom Detection Rules](02-intrusion-detection-snort/snort-rules/local.rules)
- 🚀 [SSH Brute Force Simulation](02-intrusion-detection-snort/attack-simulation/ssh-bruteforce-demo.sh)
- 🚀 [Port Scan Simulation](02-intrusion-detection-snort/attack-simulation/port-scan-demo.sh)

</details>

---

### [📁 Portfolio 3: Proxy Architecture](03-proxy-architecture/)
**Skills:** Reverse proxy deployment, TLS/HTTPS encryption, content filtering, CIA triad implementation

<details>
<summary><b>🔍 View Highlights</b></summary>

- **Tools Used:** Nginx, mitmproxy, OpenSSL
- **Architecture:** Reverse proxy (Nginx) + Forward proxy (mitmproxy)
- **Security Goals:** Confidentiality (TLS 1.3), Integrity (request validation), Availability (SSL offloading)

**Reverse Proxy (Nginx):**
- ✅ TLS 1.3 encryption with strong cipher suites
- ✅ HTTP/2 support for performance
- ✅ SSL certificate management (Let's Encrypt ready)
- ✅ Backend application isolation (localhost only)

**Forward Proxy (mitmproxy):**
- ✅ HTTPS inspection with CA certificate
- ✅ Content filtering (blocked reddit.com/r/memes, social media)
- ✅ Data Loss Prevention (DLP) capability
- ✅ Audit logging for compliance

**Traffic Analysis:**
- 🔴 HTTP (port 3000): Plaintext credentials visible in Wireshark
- 🟢 HTTPS (port 443): All data encrypted with AES-256-GCM

**Deliverables:**
- 📄 [Complete Proxy Architecture Guide](03-proxy-architecture/README.md)
- ⚙️ [Nginx Configuration](03-proxy-architecture/nginx/nginx.conf)
- 🔐 [SSL Certificate Setup Script](03-proxy-architecture/nginx/ssl-setup.sh)
- 🐍 [Content Filtering Script](03-proxy-architecture/mitmproxy/content-filter.py)

</details>

---

### [📁 Portfolio 4: SIEM Implementation (Wazuh)](04-siem-wazuh/)
**Skills:** SIEM deployment, log correlation, MITRE ATT&CK integration, SOC workflows, threat intelligence

<details>
<summary><b>🔍 View Highlights</b></summary>

- **Tools Used:** Wazuh 4.x, Elasticsearch, Kibana, fail2ban
- **Deployment:** 1 Manager + 2 Agents (extrouter, kali)
- **MITRE Coverage:** 87 techniques monitored across 8 tactics
- **Integration:** Snort IDS → Wazuh SIEM correlation

**Key Capabilities:**
- 📊 **Real-time Threat Correlation:** Multi-source event analysis
- 🎯 **MITRE ATT&CK Mapping:** T1110.003 (Password Spraying), T1566.001 (Spearphishing)
- 🤖 **Automated Response:** fail2ban IP blocking on brute force detection
- 📈 **Asset Inventory:** Network interfaces, open ports, installed software

**Detection Statistics:**
- 354 alerts in 24 hours (128 Medium, 226 Low severity)
- 0 Critical/High severity (secure baseline)
- 100% agent connectivity (extrouter, kali)

**Threat Intelligence:**
| MITRE Technique | Threat Groups | Detection Method |
|-----------------|---------------|------------------|
| T1110.003 (Password Spraying) | APT28, APT29, Lazarus | Multi-username auth failures |
| T1566.001 (Spearphishing) | TrickBot, QakBot, Emotet | Office app → shell process |

**Deliverables:**
- 📄 [Complete Wazuh SIEM Guide](04-siem-wazuh/README.md)
- 📄 [Snort Integration Guide](04-siem-wazuh/integration/snort-to-wazuh.md)
- 🐍 [MITRE Mapping Automation Script](04-siem-wazuh/integration/mitre-mapping-automation.py)

</details>

---

## 🎯 MITRE ATT&CK Coverage

Comprehensive threat intelligence documentation for adversary techniques:

### [📁 MITRE ATT&CK Mapping Documentation](mitre-attack-mapping/)

| Technique ID | Technique Name | Portfolios | Threat Groups |
|--------------|----------------|------------|---------------|
| [T1110.003](mitre-attack-mapping/T1110.003-password-spraying.md) | Password Spraying | P2, P4 | APT28, APT29, Lazarus |
| [T1566.001](mitre-attack-mapping/T1566.001-spearphishing-attachment.md) | Spearphishing Attachment | P4 | TrickBot, QakBot, Emotet |

**Detection Coverage Matrix:**

| MITRE Tactic | Techniques Covered | Detection Rate |
|--------------|-------------------|----------------|
| Initial Access | T1566.001 (Spearphishing) | ✅ 100% |
| Execution | T1059.001 (PowerShell) | ✅ 100% |
| Credential Access | T1110.003 (Password Spraying) | ✅ 100% |
| Discovery | T1046 (Network Service Scanning) | ✅ 100% |
| Lateral Movement | T1021.002 (SMB/Windows Admin Shares) | ✅ 90% |
| Impact | T1486 (Ransomware), T1498 (DDoS) | ✅ 95% |

---

## 🛠️ Technical Skills Demonstrated

### Security Tools & Platforms
- **Vulnerability Scanning:** Nmap, OpenVAS, NVD Database
- **Intrusion Detection:** Snort IDS, Suricata
- **SIEM/Log Management:** Wazuh, Elasticsearch, Kibana
- **Penetration Testing:** Hydra, Metasploit, hping3
- **Network Security:** Nginx, mitmproxy, iptables, fail2ban
- **Packet Analysis:** Wireshark, tcpdump

### Programming & Scripting
- **Python:** Vulnerability assessment, SIEM automation, log parsing
- **Bash:** Network scanning, attack simulation, system hardening
- **Configuration Management:** Snort rules, Wazuh decoders, Nginx configs

### Frameworks & Standards
- **MITRE ATT&CK:** Threat modeling, technique mapping
- **CVSS:** Risk scoring and prioritization
- **CWE:** Weakness classification
- **CIA Triad:** Security architecture design

---

## 📊 Project Metrics

| Metric | Value | Context |
|--------|-------|---------|
| **Academic Grade** | 40/40 (100%) | Top score in CAB441 cohort |
| **Total Figures** | 29 images | Visual proof of technical work |
| **Custom Detection Rules** | 4 Snort rules | 100% detection accuracy |
| **Vulnerabilities Assessed** | 23 CVEs | Across 5 critical services |
| **MITRE Techniques** | 87 monitored | Comprehensive threat coverage |
| **SIEM Agents Deployed** | 2 endpoints | Multi-host visibility |
| **Demo Scripts** | 6 executable | Reproducible demonstrations |
| **Lines of Code** | 1,500+ | Python + Bash automation |

---

## 🔗 Portfolio Navigation
```
Network-Security-Portfolio/
│
├── 01-vulnerability-management/      ← Nmap scanning, CVE analysis
│   ├── README.md
│   ├── images/ (4 figures)
│   ├── nmap-scan-demo.sh
│   └── vulnerability-report.py
│
├── 02-intrusion-detection-snort/     ← IDS deployment, attack detection
│   ├── README.md
│   ├── images/ (15 figures)
│   ├── snort-rules/
│   └── attack-simulation/
│
├── 03-proxy-architecture/            ← Reverse/forward proxy, TLS
│   ├── README.md
│   ├── images/ (5 figures)
│   ├── nginx/
│   └── mitmproxy/
│
├── 04-siem-wazuh/                    ← SIEM correlation, MITRE mapping
│   ├── README.md
│   ├── images/ (5 figures)
│   └── integration/
│
└── mitre-attack-mapping/             ← Threat intelligence docs
    ├── T1110.003-password-spraying.md
    └── T1566.001-spearphishing-attachment.md
```

---

## 🎓 Academic Achievement

**Course:** CAB441 - Network Security  
**Institution:** Queensland University of Technology (QUT)  
**Grade:** **40/40 (100%)**  
**Instructor Feedback:**
> "Excellent! The report is very detailed and nicely structured."

---

## 🚀 Quick Start Guide

### Prerequisites
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install nmap snort wazuh-agent python3 nginx

# macOS
brew install nmap snort python3 nginx
```

### Running Demonstrations

**1. Vulnerability Scanning:**
```bash
cd 01-vulnerability-management
sudo ./nmap-scan-demo.sh scanme.nmap.org
python3 vulnerability-report.py nmap-services.txt
```

**2. Intrusion Detection Testing:**
```bash
cd 02-intrusion-detection-snort/attack-simulation
sudo ./ssh-bruteforce-demo.sh 172.0.0.2
sudo ./port-scan-demo.sh 172.0.0.2
```

**3. Proxy Deployment:**
```bash
cd 03-proxy-architecture/nginx
sudo ./ssl-setup.sh yourdomain.com
sudo cp nginx.conf /etc/nginx/sites-available/default
sudo systemctl restart nginx
```

---

## 📚 Documentation Quality

Each portfolio includes:
- ✅ **Comprehensive README** with theory and implementation
- ✅ **Visual Evidence** (29 figures from lab work)
- ✅ **Executable Scripts** for hands-on validation
- ✅ **MITRE ATT&CK Context** for threat intelligence
- ✅ **Real-World Case Studies** (APT groups, malware campaigns)
- ✅ **Mitigation Strategies** with implementation examples

---

## 🎯 Career Objectives

Seeking **SOC Analyst / Cybersecurity Analyst** internship opportunities in:
- 🔍 **Security Operations Centers (SOC):** Threat monitoring, incident response
- 🛡️ **Vulnerability Management:** Risk assessment, penetration testing
- 📊 **SIEM Engineering:** Log correlation, detection rule development
- 🚨 **Incident Response:** Forensics, malware analysis, threat hunting

---

## 📫 Contact Information

| Contact Method | Details |
|----------------|---------|
| 📧 **Email** | [inkwang616@gmail.com](mailto:inkwang616@gmail.com) |
| 📱 **Phone** | +61 423 969 881 |
| 📍 **Location** | Brisbane, Queensland, Australia |
| 💼 **LinkedIn** | [linkedin.com/in/inkwanglee](https://www.linkedin.com/in/inkwanglee) |
| 🐙 **GitHub** | [github.com/inkwanglee](https://github.com/inkwanglee) |
| 📄 **Resume** | [Download Resume (PDF)](./Inkwang_Lee_Resume_Cybersecurity.pdf) |

---

## 📊 Current Status

| Status | Details |
|--------|---------|
| 🎓 **Academic Progress** | Final Year Student (7/8 semesters complete) |
| 📅 **Graduation** | July 2026 |
| 💼 **Job Seeking** | Cybersecurity Internship / Graduate Opportunities |
| ⏰ **Availability** | Part-time during studies, full-time after July 2026 |
| 🚗 **Mobility** | Own vehicle, willing to work on-site in Brisbane/Gold Coast area |
| 🌏 **Work Rights** | Full Australian work rights |

---

## 📄 License

This portfolio is for educational and demonstration purposes.  
Academic work submitted for CAB441 - Network Security (QUT, 2025).

---

## 🙏 Acknowledgments

- **Queensland University of Technology** - CAB441 Network Security course
- **MITRE Corporation** - For the ATT&CK framework
- **Open Source Community** - Snort, Wazuh, Nginx, and countless security tools

---

<div align="center">

**⭐ If you find this portfolio valuable, please consider starring the repository! ⭐**

*Last Updated: November 2025*

</div>
