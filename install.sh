#!/bin/bash

SCRIPT_NAME="skl.py"

SCRIPT_PATH="$(pwd)/$SCRIPT_NAME"

INSTALL_DIR="/usr/local/bin"

if [[ $(id -u) -ne 0 ]]; then
    echo "  (root) يرجى تشغيل هذا السكربت بصلاحيات المسؤول "
    exit 1
fi

cp "$SCRIPT_PATH" "$INSTALL_DIR/$(basename $SCRIPT_NAME)"

chmod +x "$INSTALL_DIR/$(basename $SCRIPT_NAME)"

echo "تم التثبيت بنجاح! يمكنك الآن تشغيل $SCRIPT_NAME من أي مكان."