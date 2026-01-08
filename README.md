# Modular Linux Security Audit Framework

A professional, modular Bash-based framework designed to automate system hardening checks and security auditing in Linux server environments.

## 🚀 Overview
This project demonstrates a structured approach to system administration and cybersecurity. Instead of a single script, it utilizes a modular architecture with a configuration-driven logic, reflecting professional DevOps and Security engineering standards.

## 🛠 Features
- **Null Password Detection:** Scans `/etc/shadow` to identify accounts without secure passwords.
- **Permission Verification:** Ensures critical system files (e.g., `/etc/shadow`) have restricted, root-only access.
- **Network Port Scanning:** Identifies active listening ports to detect potential unauthorized access points.
- **Automated Logging:** Generates comprehensive audit results with timestamps, saved to a dedicated `.log` file.
- **Modular Architecture:** Separate components for Logic (`audit_logic.sh`), Configuration (`config.conf`), and Execution (`main.sh`).

## 📂 Project Structure
- `main.sh`: The central entry point and orchestrator of the framework.
- `audit_logic.sh`: Contains the core security check functions and logic.
- `config.conf`: Allows users to enable/disable specific audit modules without modifying the code.
- `audit_results.log`: (Auto-generated) Stores chronological scan outputs for analysis.

## 💻 How to Run
1. Clone the repository to your Linux environment.
2. Grant execution permissions:
   ```bash
   chmod +x main.sh
