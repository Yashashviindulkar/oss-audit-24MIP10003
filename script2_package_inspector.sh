#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: yashashvi Indulkar | Registration: 24MIP10003
PACKAGE=${1:-"git"}
echo "========================================================"
echo "  FOSS PACKAGE INSPECTOR"
echo "========================================================"
echo "  Inspecting: $PACKAGE"
if command -v rpm &>/dev/null; then
    PKG_MANAGER="rpm"
elif command -v dpkg &>/dev/null; then
    PKG_MANAGER="dpkg"
else
    echo "No package manager found"; exit 1
fi
echo "  Package Manager: $PKG_MANAGER"
if [ "$PKG_MANAGER" = "rpm" ]; then
    rpm -q "$PACKAGE" 2>/dev/null; CHECK_STATUS=$?
else
    dpkg -l "$PACKAGE" 2>/dev/null | grep -q "^ii"; CHECK_STATUS=$?
fi
if [ $CHECK_STATUS -eq 0 ]; then
    echo "  STATUS: $PACKAGE is INSTALLED"
    if command -v "$PACKAGE" &>/dev/null; then
        echo "  Version: $($PACKAGE --version 2>/dev/null | head -1)"
    fi
else
    echo "  STATUS: $PACKAGE is NOT installed"
fi
echo "--------------------------------------------------------"
case "$PACKAGE" in
    git) echo "  Git: Built by Linus Torvalds in 2005 after BitKeeper was revoked." ;;
    httpd|apache2) echo "  Apache: The web server that built the open internet." ;;
    mysql|mysql-server) echo "  MySQL: Open source at the heart of millions of apps." ;;
    firefox) echo "  Firefox: A nonprofit fighting for an open web." ;;
    vlc) echo "  VLC: Built by students in Paris, plays anything for free." ;;
    python3|python) echo "  Python: A language shaped entirely by its community." ;;
    *) echo "  $PACKAGE: Open source — source freely available to all." ;;
esac
echo "========================================================"
