#!/bin/bash

# Prompt user for IP or IP range
echo 'Enter IP or IP range: '
read ip

# Run nmap command and extract specific IP addresses from a range of IP  

command=$(nmap -sn $ip | grep "Nmap scan report for" | awk '{print $NF}' | tr -d '()')

# Iterate over each extracted IP address

for i in $command;do
	status=$(curl -I -s --connect-timeout 1 $i | head -n 1 | awk '{print $2}')

# Check if the status code is 200 or 302 and print the IP that might be hosting some data

	if [ "$status" == "200" ]; then
		echo "IP with status 200: $i"
	elif [ "$status" == "302" ]; then
		echo "IP with status 302: $i"
	fi
done