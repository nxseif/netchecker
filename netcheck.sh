#!/bin/bash

echo "=============="
echo "NETWORK CHECK"
echo "=============="

if ping -c 1 1.1.1.1 > /dev/null 2>&1
then 
	echo "Internet: RUNNING"
else 
	echo "Internet: Down!"
fi

#checks DNS 

if ping -c 1 google.com >/dev/null 2>&1
then 
	echo "DNS: RUNNING"
else 
	echo "DNS: Down!"
fi

#checks ip address eazy 

echo "Youre Ip Addresse: $(hostname -I | awk '{print $1}')"

#gateway checking 

gateway=$(ip route | grep default | awk '{print $3}')

echo "gateway: $gateway"


#extra vabz

if ping -c 1 "$gateway" > /dev/null 2>&1
then 
	echo "Gatway: RUNNING"
else 
	echo "Gatway: DOWN!"
fi


#interface graber (default!)

intr=$(ip route | grep default | awk '{print $5}')

		echo "Interface: $intr"

#ping checker (lantnsy)
#fixed here some stuff 

		pi=$(ping -c 1 1.1.1.1 | grep 'time=')
	latnc=$(echo "$pi" | awk -F'time=' '{print $2}' | awk '{print $1}')
									echo "Latency: ${latnc} ms"
