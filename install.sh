#!/bin/bash

SCRIPT_NAME="skl.py"
COMMAND_NAME="skl"  # le nom que tu veux utiliser dans le terminal

SCRIPT_PATH="$(pwd)/$SCRIPT_NAME"
INSTALL_DIR="/usr/local/bin"

if [[ $(id -u) -ne 0 ]]; then
    echo "  (root) يرجى تشغيل هذا السكربت بصلاحيات المسؤول "
    exit 1
fi

cp "$SCRIPT_PATH" "$INSTALL_DIR/$COMMAND_NAME"
chmod +x "$INSTALL_DIR/$COMMAND_NAME"

echo "تم التثبيت بنجاح! يمكنك الآن تشغيل '$COMMAND_NAME' من أي مكان."

