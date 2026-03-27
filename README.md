# OSS Audit — Git
**Student:** Yashashvi | **Roll:** 24MIP10003
**Course:** Open Source Software | **Software Audited:** Git (GPL v2)

## Scripts
| File | Description |
|------|-------------|
| script1_system_identity.sh | Displays system info, kernel, user, uptime, OS license |
| script2_package_inspector.sh | Checks if a FOSS package is installed |
| script3_disk_permission_auditor.sh | Audits Linux directories and Git config paths |
| script4_log_analyzer.sh | Reads a log file, counts keyword occurrences |
| script5_manifesto_generator.sh | Interactive open-source philosophy statement generator |

## How to Run

### Script 1
chmod +x script1_system_identity.sh
./script1_system_identity.sh

### Script 2
./script2_package_inspector.sh git

### Script 3
./script3_disk_permission_auditor.sh

### Script 4
./script4_log_analyzer.sh /var/log/syslog error

### Script 5
./script5_manifesto_generator.sh

## Dependencies
- Bash 4.0+
- dpkg or rpm
- Standard GNU tools: grep, awk, cut, du, ls, date, uname
