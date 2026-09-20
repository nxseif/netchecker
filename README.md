netchecker
  
#netchecker is a Bash script made for Linux. It looks at simple network status and prints what it finds in the terminal. I wrote it during my first year of IT, just to get more practice with Bash and to understand networking tools you can run from the command line. This is a small learning project, not a product.

features  
The file netcheck.sh runs these checks:

- Internet link  
- DNS state  
- Local IP address  
- Default gateway  
- Whether the gateway can be reached  
- Network interface  
- Ping delay

Requirements  
You need:

- A Linux machine with Bash  
- The tools: ping, ip, awk, grep, hostname

On most Linux setups  these are already present

No options are required  It runs every check and then prints the output

Example output  
```text
==============
NETWORK CHECK
==============
Internet: RUNNING
DNS: RUNNING
Your IP Address: 192.168.42.137
Default Gateway: 192.168.42.137
Gateway: RUNNING
Interface: eth0
Latency: 12.3 ms
```

