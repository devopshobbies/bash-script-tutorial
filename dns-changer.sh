#!/bin/bash

RESOLV_CONF_FILE="/etc/resolv.conf"
NS_EXISTS=$(grep "nameserver 178.22.122.100" $RESOLV_CONF_FILE)
COMMENT_EXISTS=$(tail -n 3 $RESOLV_CONF_FILE | grep "#")
if [[ -z "${NS_EXISTS}" ]]; then
    sed -i.$(date +%Y-%m-%d-%H-%M-%S).bk 's@^$@\nnameserver 178.22.122.100\nnameserver 185.51.200.2\n@' $RESOLV_CONF_FILE
elif [[ -z "${COMMENT_EXISTS}" ]]; then
    sed -i 's/^nameserver 127.0.0.53/# &/' $RESOLV_CONF_FILE
fi
# awk '{sub("nameserver","#&"); sub("^$","\nnameserver 12\nnameserver 15\n"); print}' /etc/resolv.conf > resolv.conf