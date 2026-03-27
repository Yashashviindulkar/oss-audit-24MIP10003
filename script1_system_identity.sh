#!/bin/bash
# Script 1: System Identity Report
# Author: Yashashvi | Registration: 24MIP10003
STUDENT_NAME="Yashashvi"
REG_NUMBER="24MIP10003"
SOFTWARE_CHOICE="Git"
KERNEL=$(uname -r)
ARCH=$(uname -m)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date '+%A, %d %B %Y')
CURRENT_TIME=$(date '+%H:%M:%S')
HOSTNAME=$(hostname)
if [ -f /etc/os-release ]; then
    DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO="Unknown Linux Distribution"
fi
OS_LICENSE="GNU General Public License version 2 (GPL v2)"
echo "========================================================"
echo "   OPEN SOURCE AUDIT - SYSTEM IDENTITY REPORT"
echo "========================================================"
echo "  Student    : $STUDENT_NAME ($REG_NUMBER)"
echo "  Software   : $SOFTWARE_CHOICE"
echo "  Hostname   : $HOSTNAME"
echo "  Distro     : $DISTRO"
echo "  Kernel     : $KERNEL | Architecture: $ARCH"
echo "  User       : $USER_NAME | Home: $HOME_DIR"
echo "  Date/Time  : $CURRENT_DATE at $CURRENT_TIME"
echo "  Uptime     : $UPTIME"
echo "  OS License : $OS_LICENSE"
echo "========================================================"
