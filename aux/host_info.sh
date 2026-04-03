#!/bin/bash
TARGET=$1
echo "[*] Resolving hostname for $TARGET..."
NAME=$(timeout 2 getent hosts $TARGET | awk '{print $2}')
if [ -z "$NAME" ]; then
    echo "[-] Hostname not found via DNS."
else
    echo "[!] Hostname: $NAME"
fi
