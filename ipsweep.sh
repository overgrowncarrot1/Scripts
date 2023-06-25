#!/bin/bash

#bash script for ping sweep

#if no user input is put in echo the following, if something is put in else

if [ "$1" == "" ] 
then
echo "Syntax: ./ipsweep.sh xxx.xxx.xxx"
echo "If looking to save file use ./ipsweep.sh > iplist.txt"
echo "I'm not strange, weird, off, nor crazy, my reality is just different than yours"


else	
#use to have a sequence of .1 - .254 ping sweep
for ip in `seq 1 254` ; do

#ping, i time, user input (./ipsweep.sh 192.168.1) 
#grep for 64 bytes, cut through field 4
#use delimited and delete : at the end of a ping
#use multithreading to finish much faster (& done)
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & done
#we have to do a fi because we did an if statement at the beginning
fi

#to save to a file use ./ipsweep 192.168.1 > iplist.txt
#now we have saved the ipsweep to a file called iplist.txt