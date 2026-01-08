#!/bin/bash
# Zeynep Emec - Security Audit Main Entry
source ./config.conf
source ./audit_logic.sh

echo "--- SYSTEM AUDIT STARTED ---" | tee -a $LOG_FILE
echo "Timestamp: $(date)" | tee -a $LOG_FILE

if [ "$CHECK_PASSWORDS" = true ]; then check_passwords | tee -a $LOG_FILE; fi
if [ "$CHECK_PERMISSIONS" = true ]; then check_permissions | tee -a $LOG_FILE; fi
if [ "$CHECK_PORTS" = true ]; then check_ports | tee -a $LOG_FILE; fi

echo "--- Audit Finished. Results saved to $LOG_FILE ---" | tee -a $LOG_FILE