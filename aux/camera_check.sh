#!/bin/bash
TARGET=$1
echo "[*] Checking for RTSP Stream (IP Camera) on $TARGET..."
timeout 2 bash -c "</dev/tcp/$TARGET/554" && echo "[!] RTSP Detected! Possible IP Camera."
