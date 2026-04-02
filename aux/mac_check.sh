#!/bin/bash
# mac_check.sh <IP>
IP=$1
# Получаем MAC через arp-scan или стандартную таблицу arp
MAC=$(arp -n $IP | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')

if [ -z "$MAC" ]; then
    echo "MAC Address: [Unknown / Not in LAN]"
else
    # Простейшая проверка вендора через онлайн-api или локальный список
    VENDOR=$(curl -s "https://api.macvendors.com/$MAC")
    echo "MAC Address: $MAC ($VENDOR)"
fi
