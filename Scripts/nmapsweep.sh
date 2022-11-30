#!/bin/bash
#after doing ipsweep.sh you can run this and do an nmap 

for ip in $(cat iplist.txt); do nmap -p- -sC -sV -vvv -T4 $ip -Pn -oN humanreadable.txt > nmapsweep.txt & done
echo "Sire, the file has been save to nmapsweep.txt, and humanreadable.txt"
echo "Paint the roses red"
