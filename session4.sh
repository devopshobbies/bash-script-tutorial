#!/bin/bash

# uses EOF to write a bash script that prints system information
cat <<EOF > /home/shayan/Desktop/system_info.sh
#!/bin/bash
uname -a
EOF

# making the file executable
cd ~/shayan/Desktop/
chmod +x ./system_info.sh

# all of these tasks uninstall docker and redirect both stderr and stdout to /dev/null
apt autoremove --purge docker &> /dev/null
apt autoremove --purge docker > /dev/null 2>&1
apt autoremove --purge docker > /dev/null 2> /dev/null

# lists all allowed ports on ufw firewall and then stores its exit code in `exit_code`
ufw status
echo $? > exit_code


