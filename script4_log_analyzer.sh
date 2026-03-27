#!/bin/bash
# Script 4: Log File Analyzer
# Author: YASHASHVI INDULKAR| Registration:24MIP10003
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0
TOTAL_LINES=0
echo "========================================================"
echo "  LOG FILE ANALYZER"
echo "========================================================"
if [ -z "$LOGFILE" ]; then
    echo "  ERROR: No log file specified."
    echo "  Usage: $0 <logfile> [keyword]"
    exit 1
fi
if [ ! -f "$LOGFILE" ]; then
    echo "  ERROR: File not found: $LOGFILE"
    exit 1
fi
if [ ! -s "$LOGFILE" ]; then
    echo "  WARNING: File is empty. Trying fallbacks..."
    for FALLBACK in "/var/log/syslog" "/var/log/messages" "/var/log/dmesg"; do
        if [ -f "$FALLBACK" ] && [ -s "$FALLBACK" ]; then
            echo "  Switching to: $FALLBACK"
            LOGFILE="$FALLBACK"
            break
        fi
    done
fi
echo "  File   : $LOGFILE"
echo "  Keyword: $KEYWORD"
while IFS= read -r LINE; do
    TOTAL_LINES=$((TOTAL_LINES + 1))
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"
echo "--------------------------------------------------------"
printf "  Total lines : %d\n" "$TOTAL_LINES"
printf "  Matches     : %d\n" "$COUNT"
[ $TOTAL_LINES -gt 0 ] && printf "  Percentage  : %d%%\n" "$((COUNT * 100 / TOTAL_LINES))"
echo ""
if [ $COUNT -gt 0 ]; then
    echo "  Last 5 matching lines:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -5 | while IFS= read -r M; do
        echo "  > ${M:0:100}"
    done
fi
echo "========================================================"
