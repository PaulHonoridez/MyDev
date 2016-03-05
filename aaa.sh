#!/bin/bash

TEMPFILE=$(mktemp)
HNAME=$(hostname)

#echo $TEMPFILE

#echo "hostname = $HNAME"

awk -F":" '
BEGIN { 
print "====================================================="
printf "%-8s %-3s %6s %-15s %-15s\n" , "User", "UID", "GID", "Home",
"Shell" 
print "====================================================="
}
NR==1,NR==10{ printf "%-8s %3d %6d %-15s %-15s\n", $1,$3,$4,$6,$7 } ' /etc/passwd
