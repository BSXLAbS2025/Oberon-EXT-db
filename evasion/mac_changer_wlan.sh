#!/bin/bash
# Evasion: MAC Address Spoofer
INTERFACE="wlan0" # Измени на wlan0 если ты на Wi-Fi
NEW_MAC="00:$(printf '%02x:%02x:%02x:%02x:%02x' $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)))"

echo "[*] Changing MAC for $INTERFACE to $NEW_MAC..."
sudo ip link set dev $INTERFACE down
sudo ip link set dev $INTERFACE address $NEW_MAC
sudo ip link set dev $INTERFACE up
echo "[!] MAC Address changed successfully."
