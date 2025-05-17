REM TITLE: NetEnum

REM AUTHOR: OSINTI4L

REM TARGET OS: Linux (tested on Kali Linux)

REM DESCRIPTION: Enumerates and steals credentials for: `Networking interfaces`, `network manager connections`, `connected wireless network SSID and password`, and `IP logs public IP address`. The results are written to "loot.txt" and then exfiltrated via Discord webhook. It then obfuscates itself by shredding "loot.txt" and closing terminal; terminal session history is disabled at beginning of payload.
