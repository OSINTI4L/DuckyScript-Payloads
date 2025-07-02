<div align="center">

## 🦆🏴‍☠️ DuckyScript Payloads 🏴‍☠🦆

A collection of DuckyScript payloads for hacking the planet.

🏆 [edit2exfil](https://payloadhub.com/blogs/payloads/edit2exfil) - Hak5 payload award winner (May, 2025) 🏆

🏆 [Droidex](https://payloadhub.com/blogs/payloads/droidex) - Hak5 payload award winner (May, 2025) 🏆

</div>

|Name|Targeted Operating System|Type|Description|
|-----|-----|-----|-----|
|[Droidex](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Droidex)|`Android`|Data Exfiltration|Droidex exfiltrates the top file stored in the Downloads directory of target mobile device to a self-hosted python webserver over LAN.
|[Brisket_Breacher](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Brisket_Breacher)|`Android`|Browser Exploitation|Sets a malicious homepage in the Google Chrome browser that points to a Browser Exploitation Framework (BeEF) C2 to allow for command and control of a target browser.
|[Brave_Breacher](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Brave_Breacher)|`Linux`|Credential Stealer|Exports a copy of all usernames and passwords stored in the Brave Browser password manager and exfiltrates them via Discord webhook.|
|[Net_Enum](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Net_Enum)|`Linux`|Credential Stealer/Network Enumeration|Enumerates and steals credentials for: Networking interfaces, network manager connections, connected wireless network SSID and password, and IP logs public IP address.
|[edit2exfil](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/edit2exfil)|`Linux`|Data Exfiltration|A file exfiltration payload that embeds itself as a cronjob running silently in the background allowing for persistent exfiltration of updated files.|
|[Screen_Peeker](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Screen_Peeker)|`Linux`|Data Exfiltration|Embeds a Bash script as a cronjob that takes a screenshot of target system and then exfiltrate the screenshot via Discord webhook, every minute.
|[Web_Watcher](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Web_Watcher)|`Linux`|Other|Embeds a Bash script as a cronjob that will take a picture via the onboard webcam of the machine user and then exfiltrates the image via Discord webhook. The webcam picture will be taken 90 seconds after the compromised machine boots.
|[Annoying_Linux](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Annoying_Linux)|`Linux`|Prank|An annoying payload that utilizes ducky/bash scripts to randomly turn on and off: wifi, capslock, numlock, press arrow keys, and teleports the mouse pointer around the screen.|
|[Brick-n-troll](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Brick-n-troll)|`Linux`|Prank|**THIS IS A DESTRUCTIVE PAYLOAD** that plays the "trololol" song & video on max volume in full screen and then performs unauthenticated, recursive root file structure removal. A text editor will then open and print a "troll face" in ASCII art.
