#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: YASHASHVI INDULKAR | Registration:24MIP10003
clear
echo "========================================================"
echo "  OPEN SOURCE MANIFESTO GENERATOR"
echo "========================================================"
echo ""
read -p "  Your name: " STUDENT_NAME
[ -z "$STUDENT_NAME" ] && STUDENT_NAME="Anonymous Developer"
read -p "  One open-source tool you use daily: " TOOL
[ -z "$TOOL" ] && TOOL="Linux"
read -p "  In one word, what does freedom mean to you: " FREEDOM
[ -z "$FREEDOM" ] && FREEDOM="transparency"
read -p "  One thing you would build and share freely: " BUILD
[ -z "$BUILD" ] && BUILD="useful tools"
DATE=$(date '+%d %B %Y')
YEAR=$(date '+%Y')
OUTPUT="manifesto_$(whoami).txt"
echo "========================================================" > "$OUTPUT"
echo "  OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "  Written by: $STUDENT_NAME" >> "$OUTPUT"
echo "  Date: $DATE" >> "$OUTPUT"
echo "========================================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "  I, $STUDENT_NAME, write this in $YEAR when open-source runs the world." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "  Every day I use $TOOL — built openly and shared freely." >> "$OUTPUT"
echo "  That act of generosity shapes everything I do as a developer." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "  To me, freedom in software means $FREEDOM." >> "$OUTPUT"
echo "  No company can revoke my right to use a tool I depend on." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "  I will build $BUILD and release it as open source." >> "$OUTPUT"
echo "  Standing on the shoulders of giants means becoming" >> "$OUTPUT"
echo "  a shoulder for someone else one day." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "  — $STUDENT_NAME, $DATE" >> "$OUTPUT"
echo "========================================================" >> "$OUTPUT"
echo ""
echo "  Manifesto saved to: $OUTPUT"
echo ""
cat "$OUTPUT"
