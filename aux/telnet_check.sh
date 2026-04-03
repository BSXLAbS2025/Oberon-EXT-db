#!/bin/bash
TARGET=$1
echo "[*] Testing Telnet on $TARGET..."
# Пытаемся подключиться и сразу выйти, если коннект прошел — порт открыт
timeout 2 bash -c "</dev/tcp/$TARGET/23" && echo "[!] Telnet port 23 is OPEN" || echo "[-] Telnet closed."
