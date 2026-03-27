#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: YASHASHVI INDULKAR | Registration:24MIP10003
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/root" "/var/lib" "/boot")
GIT_CONFIG_DIRS=("/etc/gitconfig" "/usr/share/git-core" "/usr/lib/git-core")
echo "========================================================"
echo "  DISK AND PERMISSION AUDITOR"
echo "========================================================"
echo "--------------------------------------------------------"
echo "  SYSTEM DIRECTORIES"
echo "--------------------------------------------------------"
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        [ -z "$SIZE" ] && SIZE="N/A"
        printf "  %-20s | %-28s | %s\n" "$DIR" "$PERMS" "$SIZE"
    else
        printf "  %-20s | DOES NOT EXIST\n" "$DIR"
    fi
done
echo "--------------------------------------------------------"
echo "  GIT CONFIG DIRECTORIES"
echo "--------------------------------------------------------"
for GIT_PATH in "${GIT_CONFIG_DIRS[@]}"; do
    if [ -e "$GIT_PATH" ]; then
        PERMS=$(ls -ld "$GIT_PATH" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$GIT_PATH" 2>/dev/null | cut -f1)
        printf "  %-40s | %-28s | %s\n" "$GIT_PATH" "$PERMS" "$SIZE"
    else
        printf "  %-40s | NOT FOUND\n" "$GIT_PATH"
    fi
done
echo "========================================================"
