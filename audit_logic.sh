#!/bin/bash

check_passwords() {
    echo "[!] Checking for null passwords..."
    # Shadow dosyasını kontrol eder
    sudo awk -F: '($2 == "") {print $1}' /etc/shadow || echo "No null passwords."
}

check_permissions() {
    echo "[!] Verifying critical file permissions..."
    # /etc/shadow iznini kontrol eder (sadece root okumalı)
    ls -l /etc/shadow | grep "rw-------" > /dev/null
    if [ $? -eq 0 ]; then echo "OK: /etc/shadow is secure."; else echo "WARN: /etc/shadow is exposed!"; fi
}

check_ports() {
    echo "[!] Scanning for open ports..."
    # Aktif dinlenen portları listeler
    netstat -tuln | grep LISTEN || echo "Netstat not found."
}