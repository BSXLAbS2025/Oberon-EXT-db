#!/bin/bash
# Evasion: HTTP User-Agent Spoofing
TARGET=$1
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

echo "[*] Sending request to $TARGET masked as Chrome/Windows..."
curl -A "$UA" -I -s --connect-timeout 3 "http://$TARGET" | grep "Server"
