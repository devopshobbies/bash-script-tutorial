#!/bin/bash
#!/bin/bash
#net tools :))))

# Get domain name from user input
domain=$1

#ping ICMP packet in a RESPONSE-ECHO structure to check availability
ping=$(ping -c 2 $domain | grep 'time=')

# Check if ping was successful
if [[ $? -eq 0 ]]; then
    echo "Domain $domain is available"
else
    echo "Domain $domain is not available"
fi
