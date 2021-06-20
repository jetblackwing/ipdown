#!/bin/bash
echo "|||IP-Down|||"
echo "An instant active ip shutdowning tool developed by Amal
"
####Script to find all active ips in the network and shutdown all the systems by logging into it.
read -p "Enter the ip address: " ip

nmap -p 22 $ip/24 | grep 192 | cut -d " " -f 5 | sed '1d' | sed '$d' > activeips.txt
while read activeips
do
  echo "$activeips"
  
done < activeips.txt
