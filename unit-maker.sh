#!/bin/bash

cat << EOF > /etc/systemd/system/dns-changer.service
[Unit]
    Description=replace default nameserver with Shecans' 
    After=network.target

[Service]
    Type=simple
    ExecStart=/usr/bin/bash /home/shayan/Desktop/session18-services/dns-changer.sh

[Install]
    WantedBy=multi-user.target

EOF

sudo systemctl daemon-reload
sudo systemctl start dns-changer.service