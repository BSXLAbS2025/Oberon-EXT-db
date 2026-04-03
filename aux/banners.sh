#!/bin/bash
TARGET=$1
echo "[*] Grabbing banners for common ports on $TARGET..."
for port in 21 22 25 80 110 443; do
    echo "exit" | nc -w 2 $TARGET $port 2>/dev/null | head -n 1 | sed "s/^/ Port $port: /"
done
