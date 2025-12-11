<div align="center">

## 🦆🏴‍☠️ DuckyScript Payloads 🏴‍☠🦆

A collection of DuckyScript payloads for hacking the planet.

|🏆 Hak5 DuckyScript Payload Awards 🏆| 🖳 OS 📱 |
|---|---|
|[Brisket_Breacher](https://payloadhub.com/blogs/payloads/brisket_breacher) |`Android`|
|[Droidex](https://payloadhub.com/blogs/payloads/droidex)  |`Android`|
|[edit2exfil](https://payloadhub.com/blogs/payloads/edit2exfil) |`Linux`|

</div>

|Name|Targeted Operating System|Type|Description|
|-----|-----|-----|-----|
|[Droidex](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Droidex)|`Android`|Data Exfiltration|Droidex exfiltrates the top file stored in the Downloads directory of target mobile device to a self-hosted python webserver over LAN.
[PlunderPIN](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/PlunderPIN)|`Android`|Phishing|PlunderPIN utilizes a malicious homepage placed in the Google Chrome browser to phish the target user for their device PIN code.
|[Brisket_Breacher](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Brisket_Breacher)|`Android`|Browser Exploitation|Sets a malicious homepage in the Google Chrome browser that points to a Browser Exploitation Framework (BeEF) C2 to allow for command and control of a target browser.
|[Ducky_Dropper](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Ducky_Dropper)|`Linux`|Persistent Payload Dropper|Creates a persistent dropper that grabs payloads from an attackers' Github (or other platform) and executes them on the target machine when a trigger command is entered by the user.
|[Brave_Breacher](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Brave_Breacher)|`Linux`|Credential Stealer|Exports a copy of all usernames and passwords stored in the Brave Browser password manager and exfiltrates them via Discord webhook.|
|[Net_Enum](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Net_Enum)|`Linux`|Credential Stealer/Network Enumeration|Enumerates and steals credentials for: Networking interfaces, network manager connections, connected wireless network SSID and password, and IP logs public IP address.
|[edit2exfil](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/edit2exfil)|`Linux`|Data Exfiltration|A file exfiltration payload that embeds itself as a cronjob running silently in the background allowing for persistent exfiltration of updated files.|
|[Screen_Peeker](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Screen_Peeker)|`Linux`|Data Exfiltration|Embeds a Bash script as a cronjob that takes a screenshot of target system and then exfiltrate the screenshot via Discord webhook, every minute.
|[Web_Watcher](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Web_Watcher)|`Linux`|Other|Embeds a Bash script as a cronjob that will take a picture via the onboard webcam of the machine user and then exfiltrates the image via Discord webhook. The webcam picture will be taken 90 seconds after the compromised machine boots.
|[MOAA](https://github.com/OSINTI4L/DuckyScript-Payloads/blob/main/Payloads/MOAA/payload.txt)|`Linux`|Prank|The Mother Of All Annoyances. Quite possibly the most annoying payload to have ever been created (see payload README.md).
|[Brick-n-troll](https://github.com/OSINTI4L/DuckyScript-Payloads/tree/main/Payloads/Brick-n-troll)|`Linux`|Prank|**THIS IS A DESTRUCTIVE PAYLOAD** that plays the "trololol" song & video on max volume in full screen and then performs unauthenticated, recursive root file structure removal. A text editor will then open and print a "troll face" in ASCII art.
